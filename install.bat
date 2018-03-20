rem Install scripts for Windows.

set DOTFILES_DIR=%~dp0%

rem Install config directory.
xcopy %DOTFILES_DIR%\emacs.d %HOME%\.emacs.d /E /Y

rem Install config files.
for %%G in (bashrc, dir_colors, fonts.conf, gitignore, indent.pro, vimrc,
            gitconfig, screenrc, inputrc) DO (
    xcopy %DOTFILES_DIR%\%%G %HOME%\.%%G
)
