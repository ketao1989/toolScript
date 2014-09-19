#!/bin/bash

echo "安装tmux工具,支持apt-get,yum系列系统"

if which apt-get >/dev/null;then
    sudo apt-get install -y tmux
elif which yum > /dev/null;then
    sudo yum install -y tmux
else
    echo "暂时不支持该系统"
fi

echo "set-option -g mouse-select-pane on" > ~/.tmux.conf
echo "set-window-option -g mode-mouse on" >> ~/.tmux.conf
echo "bind D source-file ~/.tmux.mylayout" >> ~/.tmux.conf

#if [! -d "~/.tmux/"];then
#    mkdir -p ~/.tmux
#fi

echo "selectp -t 0    " > ~/.tmux.mylayout
echo "splitw -h -p 50 " >> ~/.tmux.mylayout
echo "selectp -t 1   " >>~/.tmux.mylayout
echo "splitw -v -p 50  " >>~/.tmux.mylayout
echo "selectp -t 0  " >>~/.tmux.mylayout

echo "安装配置tmux完成,你可以在启动tmux之后,使用ctrl+b,然后D 出现自定义布局!"
