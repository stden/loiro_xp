@echo off
git config --global user.email "super.denis@gmail.com"
git config --global user.name "Denis Stepulenok"
git config --global push.default simple
git commit -a -m"%COMPUTERNAME%"
git checkout master
git pull
echo Создать пользователя olymp с паролем olymp
net user olymp olymp /ADD
echo Создание каталога C:\work
rmdir C:\work /q/s
mkdir C:\work
rmdir C:\.dist /q/s
rmdir C:\olymp /q/s

if exist "C:\soft\Delphi7\Bin\delphi32.exe" (
    rem Старый Delphi с предыдущего года
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v DELPHI /t REG_SZ /d "C:\soft\Delphi7" /f
) else (
    rem Новый Delphi
)

if exist "C:\soft\vs-2005\Common7\IDE\VCExpress.exe" (
    rem Старый Visual C++ с предыдущего года
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v VS2005 /t REG_SZ /d "C:\soft\vs-2005" /f
) else (
    rem Новый Delphi
)

echo Временный каталог C:\temp
mkdir C:\temp
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v TEMP /t REG_SZ /d "C:\temp" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v TMP /t REG_SZ /d "C:\temp" /f

attrib "%ALLUSERSPROFILE%\Desktop\desktop.ini" +s +h

reg add "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /v "LocalizedString" /t REG_EXPAND_SZ /d "%COMPUTERNAME% %USERNAME%" /f