# what is this ?

<p align="center"> <a href="https://github.com/jinzhongjia/neovim-config/blob/main/Readme_CN.md">中文</a> </p>

This is my neovim config, and 100% lua!

And now it is can used on mainstream Linux distributions and widnows, all dependencies are modularized, you can easily use it on your computer after installing required external dependencies

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/main.gif)

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/debug.gif)

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/debug-js.gif)

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/home.png)

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/highlight.png)

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/outline%20and%20tree.png)

## dependencies

It is recommended to use the system's package manager to install the following dependencies

- [Nerd fonts](https://www.nerdfonts.com/font-downloads)
- [git](https://git-scm.com/downloads)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [lazydocker](https://github.com/jesseduffield/lazydocker)

## QuickStart

1. **Install `Neovim` packer manager**

First, you nedd to install `packer.nvim`(a neovim package manager), you can learn it from [here](https://github.com/wbthomason/packer.nvim#quickstart)

2. **Git clone configuration to local**

Then you clone this config with command:

> Unix, Linux

```bash
# This will git clone the neovim-config to your system path
git clone https://github.com/jinzhongjia/neovim-config ~/.cofig/nvim
```

3. **Init to auto install plugins**

Now, you use neovim open this file`~/.local/nvim/lua/plugins.lua`(this file is your plugins config) through the following command

> Unix, Linux

```bash
nvim ~/.config/nvim/lua/plugins.lua

```

And now let's type `:w`(Don't worry,his just entered the command mode and executed the save command )

You can also achieve the same effect by using `ctrl+s`(you may want to know why `ctrl+s` is available, follow the guard!)

4. \*\*Exit And Reopen Neovim

Exit and reopen neovim, it will auto install the lsp, dap, null-ts, treesitter dependencies!

Maybe you need to type `:checkhealth` to check out possible errors.

5. **Enjoy your self!**

Now, you have config `Neovim` completely, enjoy it!

## Recommend Environment

- GO
- RUST
- CLANG
- GCC
- NODE
- RUBY
