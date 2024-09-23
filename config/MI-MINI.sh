 #!/bin/bash
#
# Copyright (c) 2024-2064 TZP001
######################################################################
#自定义添加其它功能请参考源码configs/templates/目录下的config文件。
#格式如下：
#sed -i '/自定义项/d' .config
#echo "自定义项=y" >> .config
######################################################################
#以下选项是定义你需要的功能（y=集成,n=忽略），重新写入到.config文件
######################################################################
if [ ${{ env.KERNEL }} = "4.4" ] ; then
echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=n" >> .config #MENTOHUST
echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=n" >> .config #SCUTCLIENT
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=n" >> .config #SS plus+
echo "CONFIG_FIRMWARE_INCLUDE_SSOBFS=n" >> .config # simple-obfs混淆插件
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=n" >> .config #adbyby plus+
echo "CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=n" >> .config #DNSFORWARDER
echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=n" >> .config #可以不集成
echo "CONFIG_FIRMWARE_INCLUDE_XRAY=n" >> .config #集成xray执行文件  ~4.5M
echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=n" >> .config #集成v2ray执行文件
echo "CONFIG_FIRMWARE_INCLUDE_DDNSTO=n" >> .config #ddnsto  ~0.5M
echo "CONFIG_FIRMWARE_INCLUDE_ALDRIVER=n" >> .config  #阿里云盘  ~3m
echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=n" >> .config #zerotier ~1.3M
echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=n" >> .config #aliddns
else
echo "CONFIG_FIRMWARE_INCLUDE_MENTOHUST=n" >> .config #MENTOHUST
echo "CONFIG_FIRMWARE_INCLUDE_SCUTCLIENT=n" >> .config #SCUTCLIENT
echo "CONFIG_FIRMWARE_INCLUDE_SHADOWSOCKS=n" >> .config #SS plus+
echo "CONFIG_FIRMWARE_INCLUDE_SSOBFS=n" >> .config # simple-obfs混淆插件
echo "CONFIG_FIRMWARE_INCLUDE_SSSERVER=n" >> .config #SS server
echo "CONFIG_FIRMWARE_INCLUDE_DNSFORWARDER=n" >> .config #DNSFORWARDER
echo "CONFIG_FIRMWARE_INCLUDE_ADBYBY=n" >> .config #adbyby plus+
echo "CONFIG_FIRMWARE_INCLUDE_FRPC=n" >> .config #内网穿透FRPC
echo "CONFIG_FIRMWARE_INCLUDE_FRPS=n" >> .config #内网穿透FRPS
echo "CONFIG_FIRMWARE_INCLUDE_TUNSAFE=n" >> .config #TUNSAFE
echo "CONFIG_FIRMWARE_INCLUDE_ALIDDNS=n" >> .config #阿里DDNS
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNS=n" >> .config #smartdns
echo "CONFIG_FIRMWARE_INCLUDE_SMARTDNSBIN=n" >> .config #smartdns二进制文件
echo "CONFIG_FIRMWARE_INCLUDE_V2RAY=n" >> .config #集成v2ray执行文件（3.8M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_TROJAN=n" >> .config #集成trojan执行文件(1.1M左右)，如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_KOOLPROXY=n" >> .config #KP广告过滤
echo "CONFIG_FIRMWARE_INCLUDE_CADDY=n" >> .config #在线文件管理服务
echo "CONFIG_FIRMWARE_INCLUDE_CADDYBIN=n" >> .config #集成caddu执行文件，此文件有13M,请注意固件大小。如果不集成，会从网上下载下来执行，不影响正常使用
echo "CONFIG_FIRMWARE_INCLUDE_ADGUARDHOME=n" >> .config
echo "CONFIG_FIRMWARE_INCLUDE_SRELAY=n" >> .config #可以不集成
echo "CONFIG_FIRMWARE_INCLUDE_WYY=n" >> .config #网易云解锁
echo "CONFIG_FIRMWARE_INCLUDE_WYYBIN=n" >> .config #网易云解锁GO版本执行文件（4M多）注意固件超大小,不集成会自动下载
echo "CONFIG_FIRMWARE_INCLUDE_ZEROTIER=n" >> .config #zerotier ~1.3M
fi
#########################################################################################

echo "454789787987987987f98asd4f65asd32f413s2df4165sa4df65a7rw984e5f1sad6f34sd6f541sda32f4s6a5df41s3a2d4f65sad1f6s5d4f6sa5df46s5df465sd4f165sd4f165ds4f65dsf465s" >> .config 
