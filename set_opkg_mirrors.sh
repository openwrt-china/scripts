#!/bin/ash

# 安装 wget-ssl 让更换源能正常下载包数据
opkg update
opkg install wget-ssl

# 更换软件源
# https://developer.aliyun.com/mirror/openwrt
# 编辑 /etc/opkg/distfeeds.conf 文件，将其中的 downloads.openwrt.org 替换为 mirrors.aliyun.com/openwrt 即可
source_file=/etc/opkg/distfeeds.conf
default_host=downloads.openwrt.org
mirror_host=mirrors.aliyun.com/openwrt
# mirror_host=mirrors.tuna.tsinghua.edu.cn/openwrt
# mirror_host=mirror.sjtu.edu.cn/openwrt

if [ ! -f "${source_file}.backup" ]; then
  cp $source_file "${source_file}.backup"
  sed -i "s_${default_host}_${mirror_host}_" $source_file
fi