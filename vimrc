set expandtab " Insert spaces instead of Tab, when pressing Tab
set tabstop=4 " Insert 4 spaces when pressing Tab.
set shiftwidth=4 " An indent corresponds to a single tab (4 spaces)
set ai " Auto indent (Indent as the previous line when start a new line)

" With this, you can Undo in vim even after re-opening a file.
set undodir=~/.vim/undodir " Where to save Undo history
set undofile " Save Undo after closing a file
set undolevels=1000 " How many Undos to save
set undoreload=10000 
