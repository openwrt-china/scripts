#!/bin/ash

opkg update

# 安装语言包
opkg install luci-i18n-base-zh-cn
opkg install luci-i18n-opkg-zh-cn

# 安装 ddns
opkg install luci-app-ddns
opkg install luci-i18n-ddns-zh-cn
opkg install ddns-scripts_cloudflare.com-v4

# Linksys
opkg install luci-app-advanced-reboot

# 网络唤醒
opkg install luci-app-wol
opkg install luci-i18n-wol-zh-cn

# banIP
opkg install luci-banip
opkg install luci-i18n-banip-zh-cn

# 安装常用包
opkg install git-http
