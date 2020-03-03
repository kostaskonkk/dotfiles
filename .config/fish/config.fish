fish_vi_key_bindings

set fish_greeting
export LC_ALL=en_US.UTF-8

set -g theme_display_git no
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose no
set -g theme_display_git_dirty_verbose no
set -g theme_display_git_stashed_verbose no
set -g theme_display_git_master_branch no
set -g theme_git_worktree_support no
set -g theme_use_abbreviated_branch_name no
set -g theme_display_vagrant no
#set -g theme_display_docker_machine no
set -g theme_display_hg no
set -g theme_display_virtualenv yes
set -g theme_display_ruby no
set -g theme_display_nvm no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi yes
set -g theme_display_date no
set -g theme_display_cmd_duration no
set -g theme_title_display_process no
set -g theme_title_display_path yes
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path no
#set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g default_user your_normal_user
set -g theme_color_scheme gruvbox
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor no
set -g theme_newline_prompt '$ '

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
abbr gl 'git log1'
abbr gm 'git merge'
abbr gps 'git push'
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
abbr y 'vim ~/.config/yabai/yabairc'
abbr sk 'vim ~/.config/skhd/skhdrc'
abbr s 'source ~/.config/fish/config.fish'
#alias path='echo -e ${PATH//:/\\n}'
alias cal='ncal -m3'
#cd() { builtin cd "$@"; ll; }    # Always list dir contents after 'cd'
alias ll='ls -FGlAhp --time-style=+"%d-%m-%y %H:%M"'
alias la='ls -A'
alias l='ls -CF'
alias vs='vim -S'
alias shutdown='/usr/bin/osascript -e "tell app System Events to shut down"'


####################### [V]arious #############################

alias malias='history | tail -n2 | head -n1 | alias_maker'
alias cc='xclip -selection clipboard'
alias pc='xclip -o -selection clipboard'

#osascript -e 'tell app System Events to shut down'
