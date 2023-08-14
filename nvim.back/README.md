# nvim_conf
NeoVim Configs

## Install

```
sudo add-apt-repository ppa:neovim-ppa/stable
```

or

```
sudo add-apt-repository ppa:neovim-ppa/unstable
```

then

```
sudo apt-get update
sudo apt-get install neovim
```

then head [here](https://github.com/wbthomason/packer.nvim#quickstart) to grab packer, and run

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Extra Bits

### Mason.nvim

Once install go through and install all your favs

    - black
    - lua-language-server
    - luau-lsp
    - mypy
    - pydocstyle
    - reorder-python-imports
    - ruff
    - python-lsp-server

### Telescope

Go [here](https://github.com/nvim-telescope/telescope.nvim) and get all the dependencies to make for additional fun.

For convenience:

```
sudo apt install ripgrep
```

and 


```
sudo apt install fd-find
```
