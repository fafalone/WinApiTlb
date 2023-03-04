@echo off
if "%1"=="u" goto Unicode
if "%1"=="a" goto ANSI
if "%1"=="b" goto ANSI
goto Syntax
:ANSI
Echo Building ANSI...
midl /nologo /win32           /tlb win.tlb win.idl   > midl.out
if errorlevel 1 goto Error
if "%1"=="a" Goto Done
:Unicode
Echo Building Unicode...
midl /nologo /win32 /DUNICODE /tlb winU.tlb win.idl  > midl.out
if errorlevel 1 goto Error
Goto Done
:Syntax
Echo.
Echo Makes type library: ANSI (a), Unicode (u), or both (b)
Echo.
Echo MKWIN ^<a^|u^|b^>
Goto Done
:Error
echo Terminated: MIDL failed
Type midl.out
:Done
