# dotfiles

## Setup instructions
* Install iTerm2.

  Set up solarized with iTerm2
  ```
  $ git clone https://github.com/altercation/solarized
  ````
  
* Install zsh:

  [OSX] Add /usr/local/bin/zsh to /etc/shells

  ```
  $ brew install zsh
  $ chsh -s /usr/local/bin/zsh
  ```

* Install homebrew and packages:
```
$ brew install ag
```

* Install VS Code.

* Setup dotfiles:
```
$ ./install
$ mkdir $HOME/tmp
```

* [Vundle](https://github.com/VundleVim/Vundle.vim) setup:

  Launch vim and run :PluginInstall

* Finish [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) setup:
   ```
   $ brew install cmake
   $ cd ~/.vim/bundle/YouCompleteMe
   $ ./install.py --clang-completer
   ```

* Install LastPass.
* Install Spectacle.
* Install flux.
