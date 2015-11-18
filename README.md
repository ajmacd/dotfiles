#dotfiles

##Setup instructions
```
$ ./install
$ mkdir $HOME/tmp
```

###Install homebrew
http://brew.sh/

###Vundle setup
https://github.com/VundleVim/Vundle.vim
Launch vim and run :PluginInstall

###Finish YouCompleteMe setup
https://github.com/Valloric/YouCompleteMe
```
$ brew install cmake
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py --clang-completer
```

###Get git-prompt
http://git-prompt.sh/

###Install zsh
Mac
Add /usr/local/bin/zsh to /etc/shells
```
$ brew install zsh
$ chsh -s /usr/local/bin/zsh
```

###Install iTerm2

###Setup solarized with iTerm2
`$ git clone https://github.com/altercation/solarized`
