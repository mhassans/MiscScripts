# MiscScripts
Miscellaneous, useful scripts!

## Home directory files
Modifying the following files could make working with terminal more convenient. The file names start with dot (.) which makes them hidden (I removed the dots in the file names here). For example, the gitconfig file is located in ```~/.gitconfig```. The commands are tested in CentOS 7. You may need to restart terminal to make some of the changes effective.

### gitconfig
The two lines in the file makes the output of ```git status``` colorized. You can add these two lines in the file by copy-pasting or by running the following command in terminal:
```
git config --global color.ui auto
```

### inputrc
This file does not normally exist so you need to create it. The commands in this file facilitates searching in terminal history. The up and down arrow keys in your keyboard search through previous commands. Adding this inputrc file allows searching amongst previous commands starting with a user-specified term. For example, one can type ```vim``` and press up arrow to search for commands starting with ```vim```.

### tmux.conf
For those using Tmux, this file makes your Tmux screen visually nicer. I found this file somewhere on the web (I forgot where) and modified it a bit for myself.

### vimrc
This is for those using Vim editor. You need to create the ```~/.vim/undodir``` directory by hand. Some explanations are added in the file.

### bashrc
These lines are useful for Tmux users. When an ssh connection is lost, you would need to reconnect and reattach your Tmux screen. But you would find a display error when trying to, for example, show a plot. Tmux users can add these lines to their bashrc so that before every command, DISPLAY variable is exported. 

Otherwise, (if you are not lazy) you can forget about these lines and simply run
```
export $(tmux show-environment | grep "^DISPLAY")
```
when reattaching your Tmux screen (or add an alias for this command to make it easier).
