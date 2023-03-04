VERSION 5.00
Begin VB.Form FTestTLB 
   Caption         =   "Test Type Library"
   ClientHeight    =   5580
   ClientLeft      =   1272
   ClientTop       =   1944
   ClientWidth     =   5544
   LinkTopic       =   "Form1"
   ScaleHeight     =   5580
   ScaleWidth      =   5544
   StartUpPosition =   3  'Windows Default
   Begin VB.Label lblOut 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   7.8
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5148
      Left            =   480
      TabIndex        =   0
      Top             =   324
      Width           =   4296
   End
End
Attribute VB_Name = "FTestTLB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_TemplateDerived = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Declare Function VarPtr Lib "VBA5" (lpVoid As Any) As Long

Private Sub Form_Load()
    Dim f As Boolean, s As String, osver As OSVERSIONINFO
    s = IIf(UnicodeTypeLib, "Unicode", "ANSI") & " Type Library" & sCrLf
    s = s & sCrLf & "GetVersionEx test:" & sCrLf
    osver.dwOSVersionInfoSize = Len(osver)
    f = GetVersionEx(osver)
    If f Then
        s = s & "Major Version: " & osver.dwMajorVersion & sCrLf
        s = s & "Minor Version: " & osver.dwMinorVersion & sCrLf
        s = s & "Build Number:  " & osver.dwBuildNumber & sCrLf
        s = s & "Platform ID:   " & osver.dwPlatformId & sCrLf
        s = s & "CSD Version:   " & GetFixed(osver.szCSDVersion) & sCrLf
    Else
        s = "Can't get version number" & sCrLf
    End If
    s = s & sCrLf
    
    Dim h As Long, find As WIN32_FIND_DATA
    h = FindFirstFile("w*.*", find)
    s = s & sCrLf & "FindFirstFile test:" & sCrLf
    If h Then
        s = s & "Full name:  " & GetFixed(find.cFileName) & sCrLf
        s = s & "Short name: " & GetFixed(find.cAlternateFileName) & sCrLf
        s = s & "Attributes: 0x" & Hex(find.dwFileAttributes) & sCrLf
        s = s & "File size:  " & find.nFileSizeLow & sCrLf
    Else
        s = "Can't find file"
    End If
    s = s & sCrLf
    
    s = s & sCrLf & "CopyMemory test:" & sCrLf
    Dim sJunk As String, sCrap As String
    Dim wLo As Integer, wHi As Integer, dw As Long
    sJunk = "Junk"
    sCrap = "Crap"
    s = s & "Before: " & sJunk & ", " & sCrap & sCrLf
    CopyMemory ByVal sJunk, ByVal sCrap, LenB(sCrap)
    s = s & "After:  " & sJunk & ", " & sCrap & sCrLf
    wLo = &H1234
    wHi = &H4567
    s = s & "1. dw: " & Hex(dw) & " wLo: " & Hex(wLo) & " wHi: " & Hex(wHi) & sCrLf
    CopyMemory dw, wHi, 2
    s = s & "2. dw: " & Hex(dw) & " wLo: " & Hex(wLo) & " wHi: " & Hex(wHi) & sCrLf
    CopyMemory ByVal VarPtr(dw) + 2, wLo, 2
    s = s & "3. dw: " & Hex(dw) & " wLo: " & Hex(wLo) & " wHi: " & Hex(wHi) & sCrLf
    lblOut.Caption = s
    
End Sub

Function GetFixed(ab() As Byte) As String
    If UnicodeTypeLib Then
        GetFixed = StrZToStr(CStr(ab))
    Else
        GetFixed = StrZToStr(StrConv(ab, vbUnicode))
    End If
End Function

Function StrZToStr(s As String) As String
    Dim i As Integer
    i = InStr(s, Chr$(0))
    If i Then
        StrZToStr = Left$(s, i - 1)
    Else
        StrZToStr = s
    End If
End Function

