@echo off
git commit -a -m"Local changes"
git checkout master
git pull
echo ������� ���짮��⥫� olymp � ��஫�� olymp
net user olymp olymp /ADD
echo �������� ��⠫��� C:\work
rmdir C:\work /q/s
mkdir C:\work