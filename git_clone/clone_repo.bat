@echo off
setlocal

REM 设置 blankpj 远程仓库的 URL
set repo_url_blankpj=https://github.com/kakusinnka/bat.git

REM 设置 blankpj 本地克隆目录
set clone_dir_blankpj=.\bat

REM 检查指定路径的文件夹是否存在，存在则删除该文件夹及其所有内容。
IF EXIST "%clone_dir_blankpj%" (
    echo BlankPJ exists. Deleting...

    REM 删除文件夹及其内容
    rmdir /s /q "%clone_dir_blankpj%"

    echo BlankPJ deleted.
) else (
    echo BlankPJ does not exist.
)

REM 使用 git clone 命令进行克隆
git clone %repo_url_blankpj% %clone_dir_blankpj%

REM 检查 git clone 命令是否成功
if %errorlevel% neq 0 (
    echo BlankPJ clone failed.
) else (
    echo BlankPJ clone successful.
)

echo " "
echo ################################
echo " "

REM 设置 initpj 远程仓库的 URL
set repo_url_initpj=https://github.com/kakusinnka/git-tutorial.git

REM 设置 initpj 本地克隆目录
set clone_dir_initpj=.\git-tutorial

REM 检查指定路径的文件夹是否存在，存在则删除该文件夹及其所有内容。
IF EXIST "%clone_dir_initpj%" (
    echo InitPJ exists. Deleting...

    REM 删除文件夹及其内容
    rmdir /s /q "%clone_dir_initpj%"

    echo InitPJ deleted.
) else (
    echo InitPJ does not exist.
)

REM 使用 git clone 命令进行克隆
git clone %repo_url_initpj% %clone_dir_initpj%

REM 检查 git clone 命令是否成功
if %errorlevel% neq 0 (
    echo InitPJ clone failed.
) else (
    echo InitPJ clone successful.
)

echo " "
echo ################################
echo " "

xcopy "%clone_dir_blankpj%" "%clone_dir_initpj%" /E /I /Exclude:exclude.txt

cd %clone_dir_initpj%
git add .
git commit -m "first commit"
git branch -M main
REM git remote add origin %repo_url_initpj%
git push -u origin main

echo " "
echo ################################
echo " "

git checkout main
git checkout -b staging
REM git remote add origin %repo_url_initpj%
git push -u origin staging

echo " "
echo ################################
echo " "

git checkout main
git checkout -b pre-release
REM git remote add origin %repo_url_initpj%
git push -u origin pre-release

echo " "
echo ################################
echo " "

REM git checkout main
git checkout -b develop
REM git remote add origin %repo_url_initpj%
git push -u origin develop

echo " "
echo ################################
echo " "

git branch -vv

endlocal
pause