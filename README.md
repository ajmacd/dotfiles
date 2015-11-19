#dotfiles

##Setup instructions
```
$ ./install
$ mkdir $HOME/tmp
```

* Install homebrew.

* [Vundle](https://github.com/VundleVim/Vundle.vim) setup.

  Launch vim and run :PluginInstall

* Finish [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) setup.
   ```
   $ brew install cmake
   $ cd ~/.vim/bundle/YouCompleteMe
   $ ./install.py --clang-completer
   ```

* Get [git-prompt](http://git-prompt.sh/).

* Install zsh.

  [OSX] Add /usr/local/bin/zsh to /etc/shells

  ```
  $ brew install zsh
  $ chsh -s /usr/local/bin/zsh
  ```

* Install iTerm2.

  Set up solarized with iTerm2
  `$ git clone https://github.com/altercation/solarized`

* XCode.

  Install [Alcatraz package manager](https://github.com/alcatraz/Alcatraz) and get XVim and Solarized   packages.
