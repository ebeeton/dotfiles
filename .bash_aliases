#!/bin/bash
if [ "$(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip')" ];
then
    # WSL2
    open() {
        explorer.exe "$(wslpath -aw "$1")"
    }

    copypath() {
        if [[ ! "$1" ]]
        then
            wslpath -w "$PWD" | tr -d '\n' | clip.exe
        else
            wslpath -aw "$1" | tr -d '\n' | clip.exe
        fi
    }

    alias clip='clip.exe'
    alias paste='powershell.exe Get-Clipboard'
else
    alias open='xdg-open'
fi
export VISUAL=vim
export EDITOR="$VISUAL"
