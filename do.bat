@echo off
git config --global user.email "super.denis@gmail.com"
git config --global user.name "Denis Stepulenok"
git config --global push.default simple
git commit -a -m"%COMPUTERNAME%"
git checkout master
git pull
echo ������� ���짮��⥫� olymp � ��஫�� olymp
net user olymp olymp /ADD
echo �������� ��⠫��� C:\work
rmdir C:\work /q/s
mkdir C:\work
rmdir C:\.dist /q/s
rmdir C:\olymp /q/s
