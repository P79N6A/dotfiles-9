rem Install scripts for Windows.

set DOTFILES_DIR=%~dp0%

rem Install config directory.
rd /S /Q %HOME%\.emacs.d
mklink /d %HOME%\.emacs.d %DOTFILES_DIR%\emacs.d

rem Install config files.
for %%G in (bashrc, dir_colors, fonts.conf, gitignore, indent.pro, vimrc,
            gitconfig, screenrc, inputrc) DO (
    del /S /Q %HOME%\.%%G
    mklink %HOME%\.%%G %DOTFILES_DIR%\%%G
)
