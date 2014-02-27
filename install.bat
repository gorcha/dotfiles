REM Install script for windows
REM   (Many many exclusions from the linux insyall script)

REM Adapted from Giuseppe Rota's dotfiles project
REM   https://github.com/grota/dotfiles

set repohome=%~dp0
cd %repohome%

REM [bin]
mkdir %homepath%\local\bin
set PATH=%PATH%;%homepath%\local\bin

REM [git]
mklink /J "%homepath%\local\bin\git" "%repohome%win\PortableGit\"
set PATH=%PATH%;%homepath%\local\bin\git\bin
git submodule update --init --recursive

REM [vim]
mklink /H "%homepath%\_vimrc" "%repohome%vim\vimrc"
mklink /J "%homepath%\vimfiles" "%repohome%vim\dotvim"

set /p=Hit ENTER to continue...
