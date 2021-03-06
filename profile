# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/go" ]; then
    export GOPATH="$HOME/go"
    PATH="$HOME/go/bin:$PATH"
fi

#check if its in a dropbox folder since ryan is a bad person
if [ -d "$HOME/Dropbox/go" ] ; then
    export GOPATH="$HOME/Dropbox/go"
    PATH="$HOME/Dropbox/go/bin:$PATH"
fi

# load aliases
source ~/.aliases
