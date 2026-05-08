@echo off
echo ========================================
echo   Canva H5 部署脚本
echo ========================================
echo.

cd /d "%~dp0"

echo 1. 初始化 Git...
git init
git config user.email "github-actions[bot]@users.noreply.github.com"
git config user.name "github-actions[bot]"

echo 2. 添加所有文件...
git add -A

echo 3. 提交更改...
git commit -m "Update: compress images + fix QR code + liquid glass effects"

echo 4. 添加远程仓库...
git remote add origin https://github.com/zyx667788/canva-h5.git 2>nul
git remote set-url origin https://github.com/zyx667788/canva-h5.git

echo 5. 推送至 GitHub...
git branch -M main
git push -f origin main

echo.
echo ========================================
echo   部署完成！
echo   访问: https://zyx667788.github.io/canva-h5/
echo ========================================
pause
