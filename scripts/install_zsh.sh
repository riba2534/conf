#!/bin/bash

# 更新源
sudo apt-get update

# 安装Zsh
sudo apt-get install -y zsh

# 安装wget，用于下载Oh My Zsh安装脚本
sudo apt-get install -y wget

# 下载Oh My Zsh安装脚本
wget https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh

# 安装Oh My Zsh
sh install.sh

# 设置Oh My Zsh的主题为ys
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/' ~/.zshrc

# 将默认shell更改为Zsh
chsh -s $(which zsh)

# 提示用户重启终端
echo "安装完成，请重启你的终端以应用更改。"
