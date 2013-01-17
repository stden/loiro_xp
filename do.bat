@echo off
git pull
echo Создать пользователя olymp с паролем olymp
net user olymp olymp /ADD
echo Создание каталога C:\work
rmdir C:\work /q/s
mkdir C:\work