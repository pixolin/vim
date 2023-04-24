# Personal Vim configuration

Vim has the great advantage that it allows very fast changes of text 
files in the command line. To maintain the performance advantage, I 
only use a few settings and plugins that I find useful, e.g. to colorize
matching brackets and show a more verbose status line.

## Installation

1. Install Vim-Plug with …

  ```bash
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

2. If you run `vim` the first time, an error message will be shown,
that the color scheme couldn't be found. However, the plugin manager 
vim-plug and the plugins listed in `vimrc` will then be installed 
automatically. After restarting Vim everything should be fine.

3. From time to time check plugins for updates with `:PlugUpdate`
