# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


# pyenv
if [ -d "$HOME/.pyenv" ] ; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin${PATH:+:$PATH}"
    if command -v pyenv 1>/dev/null 2>&1; then
        eval "$(pyenv init -)"
    fi
fi


# My package in $HOME/local
if [ -d "$HOME/local" ] ; then
    export LOCAL="$HOME/local"
    export PATH="$LOCAL/sbin:$LOCAL/bin${PATH:+:$PATH}"
    export LD_LIBRARY_PATH="$LOCAL/lib64:$LOCAL/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
    export LD_RUN_PATH="$LOCAL/lib64:$LOCAL/lib${LD_RUN_PATH:+:$LD_RUN_PATH}"
    export LDFLAGS="-L$LOCAL/lib64 -L$LOCAL/lib"
    export CPATH="$LOCAL/include${CPATH:+:$CPATH}"
    export PKG_CONFIG_PATH="$LOCAL/lib/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
    export ACLOCAL_PATH="$LOCAL/share/aclocal"
    export MANPATH="$LOCAL/share/man${MANPATH:+:$MANPATH}"
    export MANDATORY_MANPATH="$MANPATH:${MANDATORY_MANPATH:+:$MANDATORY_MANPATH}"  # for Busybox
    export INFOPATH="$LOCAL/share/info${INFOPATH:+:$INFOPATH}"
fi

# To disable binding core in OpenMPI
export OMPI_MCA_hwloc_base_binding_policy=none

#export POWERLINE_CWD_FULL_CWD=false
#export POWERLINE_CWD_MODE="dironly"
