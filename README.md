# MiscScripts
Miscellaneous, useful scripts!

## Home directory files
Modifying the following files could make working with terminal more convenient. The file names start with dot (.) which makes them hidden (I removed the dots in the file names here). For example, the gitconfig file is located in ```~/.gitconfig```. The following works in CentOS 7. You may need to restart terminal to make some of the changes effective.

###### gitconfig
The two lines in the file makes the output of ```git status``` colorized. Another way is to run
```
git config --global color.ui auto
```
in terminal.

###### inputrc
This file does not normally exist so you need to create it. The commands in this file facilitates searching in terminal history. The up and down arrow keys in keyboards search through previous commands. Adding this inputrc file allows searching the previous commands which start with a user-specified term. For example, one can type ```vim``` and press up arrow to search for the previous commands which start with ```vim```.

###### tmux.conf
For those using tmux, this file makes your tmux screen visually nicer. I found this file on somewhere on the web (which I forgot) and modified it a little bit.

###### vimrc
This is for those using Vim editor. You need to make ```~/.vim/undodir``` directory by hand. Commmands in the file are commented appropriately.

###### bashrc
These lines are useful for Tmux users. When ssh-connection is lost, you would reconnect with ssh and reattach Tmux screen. But you would find that Display is lost and you cannot show a plot, for example. Tmux users can add these lines to their bashrc so that before every command, *Display* is activated. Otherwise, (if you are not lazy) you can forget about these and simply run
```
export $(tmux show-environment | grep "^DISPLAY")
```
when reattaching Tmux screen (or add an alias for that to make it simpler).
