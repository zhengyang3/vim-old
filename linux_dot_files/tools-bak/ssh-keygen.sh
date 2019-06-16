#!/bin/bash

cd ~

ssh-keygen -t rsa -C "zhengyang3@qq.com" 

cat ~/.ssh/id_rsa.pub
