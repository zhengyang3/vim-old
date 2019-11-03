#!/bin/bash

ln -sf ~/.vim/_vimrc_link ~/.vimrc
ln -sf ~/.vim/linux_dot_files/bashrc ~/.bashrc
ln -sf ~/.vim/linux_dot_files/agignore ~/.agignore
ln -sf ~/.vim/linux_dot_files/gitconfig ~/.gitconfig
ln -sf ~/.vim/linux_dot_files/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/.vim/linux_dot_files/tmux/tmux.conf.local ~/.tmux.conf.local


if [ -f ~/.vim/.git/config-bk ]; then
    echo "config-bk is exist!"
else
    cp ~/.vim/.git/config ~/.vim/.git/config-bk
fi
# \t is tab, \\\t is that sed to avoid conflict with bash!
sed -i "/zhengyang3/d" ~/.vim/.git/config
sed -i "/\[remote/a \\\turl = https://github.com/zhengyang3/vim.git" ~/.vim/.git/config
sed -i "/\[remote/a \\\turl = https://gitee.com/zhengyang3/vim.git" ~/.vim/.git/config

echo ""
echo "####### cat ~/.vim/.git/config #######"
cat ~/.vim/.git/config
echo "##########------end---------##########"
echo ""

