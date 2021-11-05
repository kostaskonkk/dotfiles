set fish_greeting #removes greeting
set ros_abbr
fish_vi_key_bindings
fzf_key_bindings

# Set the normal and visual mode cursors to a block
set fish_cursor_default block
# Set the insert mode cursor to a line
set fish_cursor_insert line
# Set the replace mode cursor to an underscore
set fish_cursor_replace_one underscore

# BOB THE FISH
set -g theme_display_git yes
set -g theme_display_git_dirty no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose no
set -g theme_display_git_dirty_verbose no
set -g theme_display_git_stashed_verbose no
set -g theme_display_git_master_branch no
set -g theme_git_worktree_support no
set -g theme_use_abbreviated_branch_name no
set -g theme_display_vagrant no
#set -g theme_display_docker_machine no
set -g theme_display_virtualenv yes
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi yes
set -g theme_display_date no
set -g theme_title_display_path yes
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path no
#set -g theme_date_format "+%a %H:%M"
set -g theme_nerd_fonts no
set -g theme_powerline_fonts yes
set -g default_user your_normal_user
set -g theme_color_scheme gruvbox

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
#alias ~='cd ~'                    # ~: Go Home
alias c='clear'                   # c: Clear terminal display
#alias which='type -all'           # which: Find executables
alias b='vim ~/.bashrc' 
alias a='vim ~/.aliases' 
abbr i 'vim ~/.config/i3/config' 
abbr v 'vim ~/.vimrc'
abbr f 'vim ~/.config/fish/config.fish'
abbr s 'source ~/.config/fish/config.fish'
#alias path='echo -e ${PATH//:/\\n}'
alias cal='ncal -MC3'
#cd() { builtin cd "$@"; ll; }    # Always list dir contents after 'cd'
alias ll='ls -FGlAhp --time-style=+"%d/%m/%y %H:%M"'
alias la='ls -A'
alias l='ls -CF'
alias vs='vim -S'
alias cl='xrandr --output eDP-1 --off'
alias ol='xrandr --output eDP-1 --auto'
alias m='mupdf'
alias shutdown='systemctl poweroff'

########################## R[O]S ##############################
abbr core 'roscore &'
abbr rc 'roscd '
abbr re 'rostopic echo /'
abbr rl 'roslaunch'
abbr rr 'rosrun'
abbr rh 'rostopic hz /'
abbr ro 'rostopic echo /rosout'
abbr list 'rostopic list'
abbr nav 'roscd dashgo_nav'
alias mmac='export ROS_MASTER_URI=http://localhost:11311'
alias rviz='rosrun rviz rviz &'

if [ -f /opt/ros/melodic/share/rosbash/rosfish ];
  source /opt/ros/melodic/share/rosbash/rosfish
  bass source /home/kostas/catkin_ws/devel/setup.bash
  export ROS_MASTER_URI=http://localhost:11311
end
########################## ROBOT #############################

abbr bot 'ssh eaibot@192.168.31.200'
abbr pi 'ping 192.168.31.200'
abbr mbot 'export ROS_MASTER_URI=http://192.168.31.200:11311 && export ROS_IP=192.168.31.101'
abbr rnav 'export ROS_MASTER_URI=http://192.168.31.200:11311 && export ROS_IP=192.168.31.101 && roslaunch dashgo_rviz view_navigation.launch'
abbr ovpn 'sudo openvpn --config .client.ovpn'


####################### [V]arious #############################

#alias malias="history | tail -n2 | head -n1 | awk '{$1="";=print $0}' | alias_maker"
alias malias='history | tail -n2 | head -n1 | alias_maker'
alias cc='xclip -selection clipboard'
alias pc='xclip -o -selection clipboard'

alias rec='recordmydesktop --fps 10 --no-sound'
alias rec30='recordmydesktop --fps 30 --no-sound'
alias conv='ffmpeg -i out.ogv -f mp4 out.mp4'
abbr g ' grep -irn'
#alias ss=' gnome-screenshot -af /home/kostas/report/figures/screenshots/$(date +"%d%H:%M").png'
alias θσ=' setxkbmap us'
alias gr=' setxkbmap gr'
abbr keyboard "setxkbmap -layout us,gr -option 'grp:win_space_toggle' -option 'ctrl:swap_lalt_lctl_lwin' -option 'caps:escape'"


######################### H2L #################################
abbr hd 'cd ~/dataset_generation/datasets && source ../venv/bin/activate.fish'
abbr hc 'cd ~/nul-serie/nul-serie/config_manager && source venv/bin/activate.fish'
abbr hp 'cd ~/nul-serie/nul-serie/path_planner && source venv/bin/activate.fish'
abbr hs 'cd ~/nul-serie/nul-serie/system_control && source venv/bin/activate.fish'
abbr hu 'cd ~/user-interface && source venv/bin/activate.fish'
abbr 0 'cd ~/h2l/nul-serie/nul-serie/'
abbr 0s 'cd ~/h2l/nul-serie/nul-serie/user_interface/server'
abbr 0w 'cd ~/h2l/nul-serie/nul-serie/user_interface/webapp'
abbr 0f 'cd ~/h2l/nul-serie/nul-serie/follow_path'
abbr sv 'source venv/bin/activate.fish'
abbr wo 'ssh -Y kostas@wopr.local'
abbr planner 'cd ~/h2l/nul-serie/nul-serie/path_planner && source venv/bin/activate.fish && find path_planner.py | entr -r python3 path_planner.py'
export PYTHONPATH="$PYTHONPATH:/home/kostas/nul-serie/nul-serie/:/home/kostas/dataset_generation/:/home/kostas/catkin_ws/src/dashgo/backend/src"

# Start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx /usr/bin/i3 -- -keeptty
  end
end
