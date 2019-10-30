# Awesome Dotfiles

Fundamentally changed version of [Parth/dotfiles](https://github.com/Parth/dotfiles).

## Installation

Once the repo is cloned, execute the deploy script:

```shell
./deploy
```

This script guides you through the following:

1. Checks to see if you have zsh, tmux, and vim installed.
2. Installs them using your default package manager if you don't have some of them installed.
3. Checks to see if your default shell is zsh.
4. Sets zsh to your default shell.
5. Backs up your old configuration files.

Pretty convenient for configuring new servers.

## **Summary of Changes**

## Basic runtime operations

The installation process uses symlinks linking the cloned dotfiles to your home directory. Consequentely, the version of the repository influences directly your configuration of your system.

## [Zsh](https://en.wikipedia.org/wiki/Z_shell)

The Zsh configuration uses mainly the [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) project to install various plugins and themes. Pls refer to the project description for changes fo the zsh configuration. 

### Plugins

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): Searches your history while you type and provides suggestions.
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/tree/ad522a091429ba180c930f84b2a023b40de4dbcc): Provides fish style syntax highlighting for zsh.
- [ohmyzsh](https://github.com/robbyrussell/oh-my-zsh/tree/291e96dcd034750fbe7473482508c08833b168e3): Borrowed things like tab completion, fixing ls, tmux's vi-mode plugin.

## [Vim](<https://en.wikipedia.org/wiki/Vim_(text_editor)>)

TODO: doc


## [Tmux](https://en.wikipedia.org/wiki/Tmux)

TODO
