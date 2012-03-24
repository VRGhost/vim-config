@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
@if not exist "%HOME%" @set HOME=%USERPROFILE%

cd "%~dp0"

@set BASE_DIR=%CD%
call git submodule init
cal git submodule update

call mkdir %BASE_DIR%\.vim\bundle
call mklink /J %HOME%\.vim %BASE_DIR%\.vim
call mklink /H %HOME%\.vimrc %BASE_DIR%\.vimrc
call mklink /H %HOME%\_vimrc %BASE_DIR%\.vimrc

call git clone http://github.com/gmarik/vundle.git %HOME%/.vim/bundle/vundle
