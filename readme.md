# Personal Vim configuration

Vim has the great advantage that it allows very fast changes of text 
files in the command line. To maintain the performance advantage, I 
only use a few settings and pluins that I find useful, e.g. to colorize
matching brackets and show a more verbose status line.
.
## Installation

1. Install Vim-Plug with …

  ```bash
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

2. Run `vim`, discard error messages and install Plugins with 
  command `:PlugInstall`.

3. From time to time heck plugins for updates with `:PlugUpdate`
