if [ $(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip') ];
then
    # WSL2
    open() {
        explorer.exe $(wslpath -aw "$1")
    }
else
    alias open='xdg-open'
fi
export VISUAL=vim
export EDITOR="$VISUAL"
