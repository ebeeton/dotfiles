if [ $(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip') ];
then
    # WSL2
    alias open='explorer.exe'
else
    alias open='xdg-open'
fi
export VISUAL=vim
export EDITOR="$VISUAL"
