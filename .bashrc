if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/opt/local/include
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/opt/local/share/bin:/opt/local/share/sbin:/Developer/usr/bin:/Library/Haskell/bin:/usr/local/firstworks/bin
export MANPATH=$MANPATH
export CDPATH=$CDPATH:/Users/pudae/src:/Users/pudae/src/nwm

export CMAKE_LIBRARY_PATH=/opt/local/lib

set -o vi

export PS1="\[\033[1;32m\][\$(date +%H:%M)][\u@\h:\w]$\[\033[0m\] "
