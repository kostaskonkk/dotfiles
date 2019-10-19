fish_vi_key_bindings
source /opt/ros/kinetic/share/rosbash/rosfish
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

######################## D[A]TMO ##############################
export ROS_WORKSPACE=/home/kostas/datmo_ws
abbr datmo_ 'cd ~/datmo_ws/src/datmo'
abbr vdatmo 'vim -S ~/datmo_ws/src/datmo/.datmo.vim'
abbr t 'roslaunch datmo test.launch'

alias datmo_compile='cd ~/datmo_ws && find  src/datmo/src/ -ignore_readdir_race |entr catkin_make -DCATKIN_WHITELIST_PACKAGES=datmo'
alias localization_compile='cd ~/datmo_ws && find  src/localization/src/ -ignore_readdir_race |entr -p catkin_make -DCATKIN_WHITELIST_PACKAGES=localization'

###################### [E]vo ###########################
abbr evo 'cd ~/datmo_ws/src/evo'
alias run='cd ~/datmo_ws/src/evo && find -name "*.py" | entr python3 datmo_evaluation.py'

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
alias which='type -all'           # which: Find executables
alias b='vim ~/.bashrc' 
alias a='vim ~/.aliases' 
abbr i 'vim ~/.config/i3/config' 
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
alias screens='sh ~/.screenlayout/monitor_laptop.sh'
alias cl='xrandr --output eDP-1 --off'
alias ol='xrandr --output eDP-1 --auto'
alias m='mupdf'
alias shutdown='systemctl poweroff'

########################## R[O]S ##############################
abbr rc 'roscore &'
abbr re 'rostopic echo /'
abbr rl 'rostopic list'
abbr rh ='rostopic hz /'
abbr ro 'rostopic echo /rosout'
alias mmac='export ROS_MASTER_URI=http://localhost:11311'
alias rviz='rosrun rviz rviz &'
alias mocap='roslaunch mocap_optitrack exp.launch'
alias midi='rosrun midi_ros midi_input_node'

#if [ -f /opt/ros/kinetic/setup.bash ]; then
  #source /opt/ros/kinetic/setup.bash
  #source ~/datmo_ws/devel/setup.bash
  #source ~/Documents/barc/workspace/devel/setup.bash
  #export ROS_MASTER_URI=http://localhost:11311
#fi
########################## [D]SV #############################

alias car='ssh odroid@192.168.0.101'
alias pi='ping 192.168.0.101'
alias mcar='export ROS_MASTER_URI=http://192.168.0.101:11311 && export ROS_IP=192.168.0.103'
alias bags_move='scp -r odroid@192.168.0.101:/home/odroid/kostas/bagfiles/* /home/kostas/Dropbox/experiments/'
alias video_move='scp pi@192.168.1.103:/home/pi/ocam.h264 /home/kostas/Dropbox/experiments/ocam.h264'
alias ch='ntpdate -q 192.168.0.101' # Time related
alias adjust_time='sudo ntpdate -u pool.ntp.org' # Time related  
alias carodom='scp -r /home/kostas/datmo_ws/src/odometry/* odroid@192.168.0.101:/home/odroid/datmo_ws/src/odometry'
alias cardatmo='scp -r /home/kostas/datmo_ws/src/datmo/ odroid@192.168.0.101:/home/odroid/datmo_ws/src/datmo'
alias carmk='echo "cd ~/datmo_ws && catkin_make"|car'

####################### [N]otes #############################
alias todo='vim ~/Dropbox/todo.md'

####################### [V]arious #############################

#alias malias="history | tail -n2 | head -n1 | awk '{$1="";=print $0}' | alias_maker"
alias malias='history | tail -n2 | head -n1 | alias_maker'
alias cc='xclip -selection clipboard'
alias pc='xclip -o -selection clipboard'

alias bags='cd ~/Dropbox/experiments/7/derivatives'
alias results='cd ~/results'
alias presentation_='cd ~/presentation'

alias rec='recordmydesktop --fps 10 --no-sound'
alias rec30='recordmydesktop --fps 30 --no-sound'
alias conv='ffmpeg -i out.ogv -f mp4 out.mp4'

####################### [R]eport #############################

alias report_='cd ~/report'
alias report_introduction='vim ~/report/introduction.tex'
alias report_localization='vim ~/report/localization.tex'
alias report_papers=' cd ~/report/papers/'
alias report_figures_=' cd ~/report/figures/'
alias report_figures_ink=' cd ~/report/figures/ink/'
alias g=' grep -irn'
#alias ss=' gnome-screenshot -af /home/kostas/report/figures/screenshots/$(date +"%d%H:%M").png'
alias θσ=' setxkbmap us'
alias gr=' setxkbmap gr'
