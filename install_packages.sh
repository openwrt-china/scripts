#!/bin/ash

# 安装语言包
opkg install luci-i18n-base-zh-cn
opkg install luci-i18n-opkg-zh-cn

# 安装 ddns
opkg install luci-app-ddns luci-i18n-ddns-zh-cn
opkg install ddns-scripts-cloudflare

# 网络唤醒
opkg install luci-app-wol luci-i18n-wol-zh-cn

# banIP
opkg install luci-banip luci-i18n-banip-zh-cn

# ACME
opkg install luci-app-acme luci-i18n-acme-zh-cn

# 安装常用包
opkg install git-http

# Linksys
opkg install luci-app-advanced-reboot
