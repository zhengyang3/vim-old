#!/bin/bash

cd ~

ssh-keygen -t rsa -C "zhengyang3@qq.com" 

cat ~/.ssh/id_rsa.pub
# xshell can identify long line, so you needn't to use xclip, 
# you just use mouse to select the line to copy, that's so nice! enjoy it!  


# Note：
    # if old/exist git repository use https , you should change .git/config url:
    #  https://gitee.com/zhengyang3/vim.git   --->    git@gitee.com:zhengyang3/vim.git
    
