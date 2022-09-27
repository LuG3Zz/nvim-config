## what is this ?

this is my neovim config, and 100% lua!

## notice

now, many dependent packages are installed by nixos's pkgs manager, if you want to use my config, you maybe need to install dependence manually!

I will list the required dependencies in a while, you can install the required dependencies according to this very convenient!

## 这是什么？

这是我个人所使用的 neovim 配置，配置文件均为 lua，并无 vimscript！

## 注意

由于我现在所使用的系统是 nixos，并没有配置专门的 lsp server 管理器，lsp server 均通过 nixos 的 configuration 安装，如果你想使用我的配置，你需要自行安装这些 lsp server！

我之后会整理出一份 lsp server 的名单，还有依赖的 fomatter，只要安装完这些依赖，然后 git clone 该配置，安装好 packer.nvim 后进入 nvim 的配置文件直接保存即可自动安装所有插件
