// loader.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <iostream>
#include<Windows.h>
#include<strstream>
#include <fstream>

#define BUFFSIZE 0x1000

typedef char* (*_MyAsmArmStream)(char* pAsmBuf, int* pInt1, int* pInt2, bool unkwon);


int main()
{
	OutputDebugStringA("test loader!");
	char buff[BUFFSIZE];
	GetModuleFileNameA(NULL, buff, BUFFSIZE);
	std::string str = buff;
	int pos = str.find_last_of('\\');
	str = str.substr(0,pos);
	str.append("\\asmArm.dll");
	HINSTANCE hOriginalDll;
	hOriginalDll = LoadLibraryA(str.c_str());
	if (hOriginalDll == NULL) {
		OutputDebugStringA("main dll LoadLibraryA failed!");
		return 1;
	}
	void* hookproc=GetProcAddress(hOriginalDll, "?MyAsmArmStream@@YAPADPADPAH1_N@Z");
	if (hookproc != NULL)
	{
		pos = str.find_last_of('\\');
		str = str.substr(0, pos);
		str.append("\\myasm.asm");
		std::ifstream inFile(str.c_str(), std::ios::in | std::ios::binary);
		inFile.seekg(0, std::ios_base::end);
		std::streampos fileSize = inFile.tellg();
		inFile.seekg(0, std::ios_base::beg);
		char* pAsmtemp = (char*)malloc(fileSize);
		inFile.read(pAsmtemp, fileSize);
		inFile.close();
		int pInt1 = 0;
		int pInt2 = 0;
		char* bytecode = _MyAsmArmStream(hookproc)(pAsmtemp, &pInt1, &pInt2, FALSE);
		free(pAsmtemp);
		memset(buff, 0, BUFFSIZE);
		sprintf((char*)buff, "\\%d.dat", int(&pInt1));
		pos = str.find_last_of('\\');
		str = str.substr(0, pos);
		str.append(buff);
		//save bytecode
		std::ofstream ouF;
		ouF.open(str.c_str(), std::ofstream::binary);
		ouF.write(reinterpret_cast<const char*>(bytecode), pInt1);
		ouF.close();
	}
	FreeLibrary(hOriginalDll);
}
