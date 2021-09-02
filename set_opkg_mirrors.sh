#!/bin/ash

# 备份
distfeeds_file=/etc/opkg/distfeeds.conf
if [ ! -f "${distfeeds_file}.backup" ]; then
    cp $distfeeds_file "${distfeeds_file}.backup"
fi

# 更换软件源
# https://developer.aliyun.com/mirror/openwrt
# 编辑 /etc/opkg/distfeeds.conf 文件，将其中的 downloads.openwrt.org 替换为 mirrors.aliyun.com/openwrt 即可
sed -i 's_downloads.openwrt.org_mirrors.aliyun.com/openwrt_' $distfeeds_file
#sed -i 's_downloads.openwrt.org_mirrors.tuna.tsinghua.edu.cn/openwrt_' $distfeeds_file