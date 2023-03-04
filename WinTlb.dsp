# Microsoft Developer Studio Project File - Name="WinTlb" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=WinTlb - Win32 ANSI
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "WinTlb.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "WinTlb.mak" CFG="WinTlb - Win32 ANSI"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "WinTlb - Win32 Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "WinTlb - Win32 ANSI" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "WinTlb - Win32 Unicode"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "WinTlb___Win32_Unicode"
# PROP BASE Intermediate_Dir "WinTlb___Win32_Unicode"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ""
# PROP Intermediate_Dir ""
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept

!ELSEIF  "$(CFG)" == "WinTlb - Win32 ANSI"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "WinTlb___Win32_ANSI0"
# PROP BASE Intermediate_Dir "WinTlb___Win32_ANSI0"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ""
# PROP Intermediate_Dir ""
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "WinTlb - Win32 Unicode"
# Name "WinTlb - Win32 ANSI"
# Begin Source File

SOURCE=.\CARDS.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\COMCONST.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\COMMCTRL.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\COMMDLG.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\MMSYSTEM.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\OAIDL.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\OBJBASE.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\OBJIDL.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\OLE2.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\OLEAUTO.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\OLECTL.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\PROPSET.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\richedit.idl
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\SHELLAPI.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\SHLOBJ.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\ShLwApi.idl
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\unknwn.idl
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\VBERR.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\WIN.IDL

!IF  "$(CFG)" == "WinTlb - Win32 Unicode"

# PROP Ignore_Default_Tool 1
USERDEP__WIN_I="cards.idl"	"comconst.idl"	"commdlg.idl"	"mmsystem.idl"	"oaidl.idl"	"objbase.idl"	"objidl.idl"	"ole2.idl"	"oleauto.idl"	"olectl.idl"	"propset.idl"	"richedit.idl"	"shellapi.idl"	"shlobj.idl"	"unknwn.idl"	"vberr.idl"	"winbase.idl"	"windef.idl"	"winerror.idl"	"wingdi.idl"	"winnetwk.idl"	"winnls.idl"	"winreg.idl"	"winuser.idl"	"winver.idl"	"wtypes.idl"	
# Begin Custom Build
InputPath=.\WIN.IDL

"c:\hardcore3\release\winu.tlb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	midl /nologo /win32 /DUNICODE /tlb c:\Hardcore3\release\winu.tlb win.idl

# End Custom Build

!ELSEIF  "$(CFG)" == "WinTlb - Win32 ANSI"

# PROP Ignore_Default_Tool 1
USERDEP__WIN_I="cards.idl"	"comconst.idl"	"commdlg.idl"	"mmsystem.idl"	"oaidl.idl"	"objbase.idl"	"objidl.idl"	"ole2.idl"	"oleauto.idl"	"olectl.idl"	"propset.idl"	"richedit.idl"	"shellapi.idl"	"shlobj.idl"	"unknwn.idl"	"vberr.idl"	"winbase.idl"	"windef.idl"	"winerror.idl"	"wingdi.idl"	"winnetwk.idl"	"winnls.idl"	"winreg.idl"	"winuser.idl"	"winver.idl"	"wtypes.idl"	
# Begin Custom Build
InputPath=.\WIN.IDL

"c:\hardcore3\release\win.tlb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	midl /nologo /win32 /tlb c:\hardcore3\release\win.tlb win.idl

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\WINBASE.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\WINDEF.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\WINERROR.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\WINGDI.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\WINNETWK.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\WINNLS.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\WINREG.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\WINUSER.IDL
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\winver.idl
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\WTYPES.IDL
# PROP Exclude_From_Build 1
# End Source File
# End Target
# End Project
