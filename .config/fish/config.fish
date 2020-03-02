fish_vi_key_bindings

set fish_greeting
export LC_ALL=en_US.UTF-8

# GIT
abbr g 'git'
abbr ga 'git add'
abbr gb 'git branch'
abbr gbl 'git blame'
abbr gc 'git commit -m'
abbr gca 'git commit --amend -m'
abbr gco 'git checkout'
abbr gcp 'git cherry-pick'
abbr gd 'git diff'
abbr gf 'git fetch'
abbr gl 'git log'
abbr gm 'git merge'
abbr gp 'git push'
abbr gpf 'git push --force-with-lease'
abbr gpl 'git pull'
abbr gr 'git remote'
abbr grb 'git rebase'
abbr gs 'git status'
abbr gst 'git stash'

######################## [G]eneral ##############################
alias cp='cp -iv'                 # Preferred 'cp' implementation
alias mv='mv -iv'                 # Preferred 'mv' implementation
alias mkdir='mkdir -pv'           # Preferred 'mkdir' implementation
alias less='less -FSRXc'          # Preferred 'less' implementation
alias ..='cd ../'                 # Go back 1 directory level
alias ...='cd ../../'             # Go back 2 directory levels
alias 2.='cd ../../'              # Go back 2 directory levels
alias 3.='cd ../../../'           # Go back 3 directory levels
alias 4.='cd ../../../../'        # Go back 4 directory levels
alias 5.='cd ../../../../../'     # Go back 5 directory levels
alias 6.='cd ../../../../../../'  # Go back 6 directory levels
alias c='clear'                   # c: Clear terminal display
alias which='type -all'           # which: Find executables
alias b='vim ~/.bashrc' 
alias a='vim ~/.aliases' 
abbr v 'vim ~/.vimrc'
abbr f 'vim ~/.config/fish/config.fish'
alias s='source ~/.config/fish/config.fish'
#alias path='echo -e ${PATH//:/\\n}'
alias cal='ncal -MC3'
#cd() { builtin cd "$@"; ll; }    # Always list dir contents after 'cd'
alias ll='ls -FGlAhp --time-style=+"%d-%m-%y %H:%M"'
alias la='ls -A'
alias l='ls -CF'
alias vs='vim -S'
alias shutdown='systemctl poweroff'


####################### [V]arious #############################

alias malias='history | tail -n2 | head -n1 | alias_maker'
alias cc='xclip -selection clipboard'
alias pc='xclip -o -selection clipboard'

