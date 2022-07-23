# Neovim 
#### Latest version build from source [Neovim](https://github.com/neovim/neovim)

#### Cloning the repo.
```sh
git clone https://github.com/neovim/neovim.git
```

#### Prerequisites 
```sh
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
```

## Plugins 
### [Vim Plug](https://github.com/junegunn/vim-plug)

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

```
## Setting Up
* ``` mkdir ~/.config/nvim  .  ```
* ``` touch ~/.config/nvim/init.vim .   ```
* ``` Type ESC :PlugInstall command to install plugins.  ```


