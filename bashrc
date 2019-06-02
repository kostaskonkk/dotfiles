# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export EDITOR=/usr/locan/bin/vim
export VISUAL=/usr/locan/bin/vim

set -o vi #set vi mode

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth # don't put duplicate lines or lines starting with space in the history.
shopt -s histappend # append to the history file, don't overwrite it
HISTSIZE=3000 # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTFILESIZE=6000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
# force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


alias pdf='./Documents/pdf_sender.sh'


alias mat='cd ~/Dropbox/path_following && matlab  && cd -'
alias datmo='cd ~/datmo_ws/src/datmo'
alias c='clear'
alias b='vim ~/dotfiles/bashrc' 
alias v='vim ~/dotfiles/vimrc'
alias s='source ~/dotfiles/bashrc'
alias cc='xclip -selection clipboard'
alias pc='xclip -o -selection clipboard'
alias t='roslaunch datmo test.launch'
alias o='rostopic echo /rosout'
alias pi='ping 192.168.0.101'

alias bags='cd ~/Dropbox/experiments'
alias presentation='cd ~/Dropbox/presentation/midterm'
alias notes='cd ~/Dropbox/report/notes'
alias notes_car='vim ~/Dropbox/report/notes/car.md'

alias rec='recordmydesktop --fps 10 --no-sound'
alias rec30='recordmydesktop --fps 30 --no-sound'
alias conv='ffmpeg -i out.ogv -f mp4 out.mp4'

# ROS
if [ -f /opt/ros/kinetic/setup.bash ]; then
  . source /opt/ros/kinetic/setup.bash
  . source ~/datmo_ws/devel/setup.bash
  . source ~/Documents/barc/workspace/devel/setup.bash
  . export ROS_MASTER_URI=http://localhost:11311
fi
alias mcar='export ROS_MASTER_URI=http://192.168.0.101:11311 && export ROS_IP=192.168.0.103'
alias mmac='export ROS_MASTER_URI=http://localhost:11311'
alias core='roscore &'
alias rviz='rosrun rviz rviz &'
alias hz='rostopic hz'
alias recho='rostopic echo'
alias list='rostopic list'
alias mocap='roslaunch mocap_optitrack exp.launch'
alias midi='rosrun midi_ros midi_input_node'
alias singularity='singularity shell ~/Downloads/robprac-singularity2.4-fixes0.img'

# DSV 
alias car='ssh odroid@192.168.0.101'
alias bags_move='scp -r odroid@192.168.0.101:/home/odroid/kostas/bagfiles/* /home/kostas/Dropbox/experiments/'
alias video_move='scp pi@192.168.1.103:/home/pi/ocam.h264 /home/kostas/Dropbox/experiments/ocam.h264'
alias ch='ntpdate -q 192.168.0.101' # Time related
alias adjust_time='sudo ntpdate -u pool.ntp.org' # Time related  
alias carodom='scp -r /home/kostas/datmo_ws/src/odometry/* odroid@192.168.0.101:/home/odroid/datmo_ws/src/odometry'
alias cardatmo='scp -r /home/kostas/datmo_ws/src/datmo/ odroid@192.168.0.101:/home/odroid/datmo_ws/src/datmo'
alias carmk='echo "cd ~/datmo_ws && catkin_make"|car'

# Ubuntu
alias open='gnome-open'


alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
#cd() { builtin cd "$@"; ll; }              # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'

################ Pullupz ##################
alias publish_site='scp -r ~/Dropbox/pullupz/website/* pi@192.168.1.3:/var/www/html/'
alias publish='scp -r ~/Dropbox/pullupz pi@192.168.1.3:/home/pi/'
alias pi='ssh pi@192.168.1.3'
alias pullupz='cd ~/Dropbox/pullupz && ls'

alias notes='cd ~/Dropbox/report/notes'
alias open='open -a Finder ./'              # f:Opens current directory in MacOS Finder
alias s='source ~/.bash_profile'
alias b='vim ~/.bash_profile'

################ Report ##################
alias report_='cd ~/Dropbox/report'
alias report_introduction='vim ~/Dropbox/report/literature_survey/Introduction.tex'
