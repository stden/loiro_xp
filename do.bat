@echo off
git config --global user.email "super.denis@gmail.com"
git config --global user.name "Denis Stepulenok"
git commit -a -m"Local changes"
git checkout master
git pull
echo Создать пользователя olymp с паролем olymp
net user olymp olymp /ADD
echo Создание каталога C:\work
rmdir C:\work /q/s
mkdir C:\work
rmdir C:\.dist /q/s
rmdir C:\olymp /q/s
