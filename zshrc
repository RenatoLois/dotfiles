export ZSH="$HOME/.oh-my-zsh"

DISABLE_AUTO_UPDATE=false

ZSH_THEME="lambda"

plugins=(git zsh-syntax-highlighting)

ISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

source $ZSH/oh-my-zsh.sh

alias gdb="gdb -q"
alias rasc="rm -f /tmp/__rasc_file.txt && nvim /tmp/__rasc_file.txt"

export KITTY_LISTEN_ON=unix:/tmp/kitty-socket
export PATH="/home/lois/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/lois/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
