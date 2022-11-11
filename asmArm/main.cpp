#include<windows.h>
#include<stdio.h>
#include<strstream>
#include <iostream>
#include <fstream>

#define BUFFSIZE 0x1000
// array that contains on original DLL exports
void* (table[3]);

typedef char * (*_MyAsmArmStream)(char* pAsmBuf, int* pInt1, int* pInt2, bool unkwon);
_MyAsmArmStream hookproc;

__declspec(dllexport) char* MyAsmArmStream(char* pAsmBuf, int* pInt1, int* pInt2, bool unkwon)
{
	OutputDebugStringA("enter MyAsmArmStream");
	std::string oldasm = pAsmBuf;
	std::string flagcode = "DebugLabel1:";
	size_t offset=oldasm.find(flagcode);
	if (offset!= oldasm.npos)
	{
		//read shellcode.asm
		char buff[BUFFSIZE];
		GetModuleFileNameA(NULL, buff, BUFFSIZE);
		std::string str = buff;
		int pos = str.find_last_of('\\');
		str = str.substr(0, pos);
		str.append("\\shellcode.asm");
		std::ifstream inFile(str.c_str(), std::ios::in | std::ios::binary);
		inFile.seekg(0, std::ios_base::end);
		std::streampos fileSize = inFile.tellg();
		inFile.seekg(0, std::ios_base::beg);
		char* pAsmtemp = (char*)malloc(fileSize);
		if (pAsmtemp != 0)
		{
			inFile.read(pAsmtemp, fileSize);
			std::string insert;
			insert.append(pAsmtemp, fileSize);
			std::string newasm = "";
			newasm.append(oldasm.substr(0, offset + flagcode.size()));
			newasm.append(insert);
			newasm.append(oldasm.substr(offset + flagcode.size()));

			OutputDebugStringA("change code");
			char* bytecode = hookproc((char*)(newasm.c_str()), pInt1, pInt2, unkwon);
			return bytecode;
		}
		inFile.close();
	}
	char* bytecode = hookproc(pAsmBuf, pInt1, pInt2, unkwon);
	return bytecode;
	
}

__declspec(naked,dllexport) void __cdecl freeBinaryBuffer(char*)
{
	__asm jmp table[4]
}

__declspec(naked,dllexport) int __cdecl theOptimizer(char*,std::ostrstream*)
{
	__asm jmp table[8]
}

void localDllMain(void)
{
	/* Handle on the original Dll */
	char buff[BUFFSIZE];
	GetModuleFileNameA(NULL, buff, BUFFSIZE);
	std::string str = buff;
	int pos = str.find_last_of('\\');
	str = str.substr(0, pos);
	str.append("\\asmArm_backup.dll");
	HINSTANCE hOriginalDll;
	hOriginalDll = LoadLibraryA(str.c_str());
	if (hOriginalDll == NULL) {
		OutputDebugStringA("submain dll LoadLibraryA failed!");
		return;
	}
	table[0] = GetProcAddress(hOriginalDll, MAKEINTRESOURCEA(1));
	hookproc = (_MyAsmArmStream)table[0];
	table[1] = GetProcAddress(hOriginalDll, MAKEINTRESOURCEA(2));
	table[2] = GetProcAddress(hOriginalDll, MAKEINTRESOURCEA(3));
	memset(buff, 0, sizeof(buff));
	sprintf_s(buff,"old MyAsmArmStream addr:%p ,new MyAsmArmStream addr:%p\n", MyAsmArmStream,table[0]);
	OutputDebugStringA(buff);
	memset(buff, 0, sizeof(buff));
	sprintf_s(buff, "old freeBinaryBuffer addr:%p,new freeBinaryBuffer addr:%p\n", freeBinaryBuffer, table[1]);
	OutputDebugStringA(buff);
	memset(buff, 0, sizeof(buff));
	sprintf_s(buff, "old theOptimizer addr:%p,new theOptimizer addr:%p\n", theOptimizer,table[2]);
	OutputDebugStringA(buff);
}
void localDllClose(void)
{
	OutputDebugStringA("close asmArm.dll");
	return;
}

BOOL WINAPI DllMain(HINSTANCE hDll, DWORD fdwReason, LPVOID lpvReserved)
{
	char buff[BUFFSIZE];
	sprintf_s(buff, "%d\n", fdwReason);
	OutputDebugStringA(buff);
	if (fdwReason == DLL_PROCESS_DETACH)
	{
		localDllClose();
	}
	if (fdwReason == DLL_PROCESS_ATTACH)
	{
		localDllMain();
	}
	return TRUE;
}