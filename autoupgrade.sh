#!/bin/ash

# OpenWRT 自动更新软件包脚本
# https://cokebar.info/archives/930

# 自动执行配置
# 文件格式说明
#  ——分钟 (0 - 59)
# |  ——小时 (0 - 23)
# | |  ——日   (1 - 31)
# | | |  ——月   (1 - 12)
# | | | |  ——星期 (0 - 7)（星期日=0或7）
# | | | | |
# * * * * * 被执行的命令
# 0 3 * * * /root/autoupgrade.sh
# 每天凌晨 3 点执行自动更新

opkg update

for ipk in $(opkg list-upgradable | awk '$1!~/^kmod|^Multiple/{print $1}'); do
	opkg upgrade $ipk
done