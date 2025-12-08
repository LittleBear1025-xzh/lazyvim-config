# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

拉取配置到~/.config/nvim目录下：

```bash
git clone https://github.com/LittleBear1025-xzh/lazyvim-config.git ~/.config/nvim
```

下载插件需要的依赖：

```bash
cd ~/.config/nvim
bash ./setup.sh
```

如果需要nvim和zellij更好地使用，需要将`./config.kdl`文件复制到`~/.config/zellij/`目录下：

```bash
mkdir -p ~/.config/zellij
cp ./config.kdl ~/.config/zellij/
```
