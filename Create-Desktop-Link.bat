chcp 936
REM ����936�����ֹĳЩ����·������������ʧЧ
@echo off
setlocal enabledelayedexpansion
mode con cols=90 lines=30&color 0a&title ����Burp Suiteһ��������Ӣ��ԭ�桿�ű���ݷ�ʽ
echo ======================================================
echo m    m                             mm   m          m
echo ##  ##  m mm  m   m  m mm          #"m  #  mmm   mm#mm
echo # ## #  #"  "  #m#   #"  #         # #m # #"  #    #
echo # "" #  #      m#m   #   #         #  # # #""""    #
echo #    #  #     m" "m  #   #    #    #   ## "#mm"    "mm
echo =======================================================  
echo.
echo [+] ��л�ƽ�����^&��������^&Burp�ٷ�^&�����������^&��лEveryOne!
echo.
echo [+] ��ӭ��λ���ѹ����Ҳ���@_@��https://mrxn.net
echo.
echo [+] ��õ�ǰ·��:%~dp0
set path=%~dp0Burp_start_en.bat
echo.
if exist %path% (
echo [+] ����Burp��Ӣ��ԭ�桿һ�������ű�Burp_start_en.bat
echo.
echo [+] �����ű�·����
echo.
echo [+] %path%
echo.
goto :creat
) else (
echo [-] ע��,δ���֡�Ӣ��ԭ�桿�����ű�Burp_start_en.bat����ע���Ƿ����,�����˳�... 
echo.
pause
exit
)

:creat
echo [+] ��ʼ������ݷ�ʽ...
echo.
rem ���ó��������·��(��Ҫ)
set Program=%path%
rem ���ÿ�ݷ�ʽ����(��Ҫ)
set LinkName=Burp_Suite_En
rem ������·��
set WorkDir=%~dp0
rem ���ÿ�ݷ�ʽ˵��
set Desc=BurpSuite��Ӣ��ԭ�桿һ������
rem ���á�Ӣ��ԭ�桿��ݷ�ʽͼ��
set icon=%~dp0/img/Goescat-Macaron-Burp-suite.ico
if not defined WorkDir call:GetWorkDir "%Program%"
(echo Set WshShell=CreateObject("WScript.Shell"^)
echo strDesKtop=WshShell.SpecialFolders("DesKtop"^)
echo Set oShellLink=WshShell.CreateShortcut(strDesKtop^&"\%LinkName%.lnk"^)
echo oShellLink.TargetPath="%Program%"
echo oShellLink.WorkingDirectory="%WorkDir%"
echo oShellLink.WindowStyle=1
echo oShellLink.Description="%Desc%"
echo oShellLink.IconLocation="%icon%"
echo oShellLink.Save)>makelnk.vbs
echo [+] ��Ӣ��ԭ�桿�����ݷ�ʽ�����ɹ�!!
echo.
makelnk.vbs
del /f /q makelnk.vbs
pause
goto :eof
:GetWorkDir
set WorkDir=%~dp1
set WorkDir=%WorkDir:~,-1%
pause
goto :eof