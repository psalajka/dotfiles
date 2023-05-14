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

if [ ! -f ~/.git-completion.bash ]; then
    echo "Downloading 'git-completion.bash'..."
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash \
        -o ~/.git-completion.bash
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

if [ ! -f ~/.tmux-completion.bash ]; then
    echo "Downloading 'tmux-completion.bash'..."
    curl https://raw.githubusercontent.com/imomaliev/tmux-bash-completion/master/completions/tmux \
        -o ~/.tmux-completion.bash
fi

if [ -f ~/.tmux-completion.bash ]; then
    . ~/.tmux-completion.bash
fi
