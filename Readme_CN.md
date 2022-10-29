# 这是什么？

<!--toc:start-->

- [这是什么？](#这是什么)
  - [必备依赖](#必备依赖)
  - [快速开始](#快速开始)
  - [推荐本地使用的环境](#推荐本地使用的环境)
  <!--toc:end-->

这是作者（我）所使用的 neovim 配置，具备开箱即用的特点，并且配置文件 100%`Lua`，可以放心食用！

该配置文件可以在主流 Linux 发行版和 Windows 上使用，操作很简单，只需要安装好几个必备的依赖就可以轻松使用！

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/main.gif)

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/debug.gif)

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/debug-js.gif)

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/home.png)

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/highlight.png)

![](https://github.com/jinzhongjia/neovim-config/blob/main/image/outline%20and%20tree.png)

## 必备依赖

- [Nerd fonts](https://www.nerdfonts.com/font-downloads)
- [git](https://git-scm.com/downloads)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [lazydocker](https://github.com/jesseduffield/lazydocker)

## 快速开始

1. **安装`neovim`包管理器**

这里使用的包管理器为`packer.nvim`, 安装步骤在这里不详细赘述，可以参考[这里](https://github.com/wbthomason/packer.nvim#quickstart)

2. **Gie clone 配置文件到本地**

你可以通过以下命令`clone`配置到本地：

> Unix, Linux

```bash
# This will git clone the neovim-config to your system path
git clone https://github.com/jinzhongjia/neovim-config ~/.config/nvim
```

3. **进行初始化，让包管理器自动安装插件**

现在，让我们用`nvoeim`打开路径为`~/.local/nvim/lua/plugins.lua`的文件，该文件就是我们`neovim`中插件管理的地方,可以通过以下命令打开：

> Unix, Linux

```bash
nvim ~/.config/nvim/lua/plugins.lua

```

现在，在键盘上按下`:w`按键，出发文件保存（该文件已经设定为保存会自动安装检查插件更新）,或者你也可以使用`ctrl+s`的组合键来达到保存文件的效果（这是在快捷键中设置的）

4. **退出并重新进入 neovim**

退出并重新进入 neovim,这时它会自动安装所需的依赖（lsp、dap、null-ts、tresitter）,可以使用`:checkhealth`来进行错误检测，可以按照其中的 error 选择性修复。

5. **享受`neovim`开发**

现在，所有插件应该已经安装完成了，好好享受使用`Neovim`开发吧

## 推荐本地使用的环境

- GO
- RUST
- CLANG
- GCC
- NODE
- RUBY
