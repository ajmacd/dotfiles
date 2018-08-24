# dotfiles

## Setup instructions
* Install iTerm2.

  Set up solarized with iTerm2
  ```
  $ git clone https://github.com/altercation/solarized
  ````
  
* Install homebrew and packages:
```
$ brew install ag cmake nvm zsh
```

* Setup zsh:

  [OSX] Add /usr/local/bin/zsh to /etc/shells

  ```
  $ chsh -s /usr/local/bin/zsh
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
   $ cd ~/.vim/bundle/YouCompleteMe
   $ ./install.py --clang-completer
   ```
   
* Install `git-prompt.sh`:
```
$ curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh
```

* Install LastPass.
* Install Spectacle.
* Install flux.

* Support key repeat:
```
$ defaults write -g ApplePressAndHoldEnabled -bool false
```

* Install VS code extensions:
  * Vim
  * ESLint
  * :emojisense:
  * Code Spell Checker
