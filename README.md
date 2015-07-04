# My dotfiles repository

Uses [dotbot](https://github.com/anishathalye/dotbot) for management.

## Vince: do this on a new machine:

```
git clone --recursive git@github.com:drvinceknight/dotfiles.git .dotfiles
cd .dotfiles
./install
```

## Vince: this is how to add more dot files as needed:

Edit the `install.conf.yaml` file which maps the `.file` to the location of
the file in this repository.

## Vince: Here are other things you do when you setup a new box:

### For Vim

You use [vundle](https://github.com/gmarik/Vundle.vim) for your package
management so do this to set it up:

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### For zsh

You use [oh my zsh](https://github.com/robbyrussell/oh-my-zsh)

Go get it:

```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```

Change your shell

```
chsh -s /bin/zsh
```

### For homebrew

On Mac OSX you use [homebrew](http://brew.sh/). Here is how you install it:

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### For tmux

You use [tmux](http://tmux.github.io/):

- On ubuntu:

  ```
  sudo apt-get install tmux
  ```

- On Mac OS X:

  ```
  brew install tmux
  ```

## Vince: this is how to update the dotbot submodule:

```
git submodule update --remote dotbot
```
