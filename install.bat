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
mklink /J "%homepath%\local\bin\ctags" "%repohome%win\ctags58\"
set PATH=%PATH%;%homepath%\local\bin\git\bin
set PATH=%PATH%;%homepath%\local\bin\git\ctags
git submodule update --init --recursive

REM [vim]
del "%homepath%\_vimrc"
mklink /H "%homepath%\_vimrc" "%repohome%vim\vimrc"
mklink /J "%homepath%\vimfiles" "%repohome%vim\dotvim"

REM [r]
del "%homepath%\Documents\.Rprofile"
mklink /H "%homepath%\Documents\.Rprofile" "%repohome%r\_Rprofile"

set /p=Hit ENTER to continue...
