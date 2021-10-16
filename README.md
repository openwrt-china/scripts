# scripts for openwrt

1. 设置仓库镜像源，使用 aliyun
2. 安装中文语言包
3. 安装 ddns（cloudflare）、wol、banip
4. 自动更新脚本 autoupgrade.sh

```bash
# 初始化
opkg install git-http
git clone https://github.com/openwrt-packages/scripts.git
cd scripts
./run.sh

# 自动更新
./autoupgrade.sh
```

系统，计划任务，添加：

```
# 每天执行自动更新
30 3 * * * /root/scripts/autoupgrade.sh
```