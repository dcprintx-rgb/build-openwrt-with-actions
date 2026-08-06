# 请在下方输入自定义命令(一般用来安装第三方插件)(可以留空)

# 编辑默认的lan口ip地址
sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate

# 编辑默认的主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 编辑默认的luci显示的固件名称
#sed -i 's/OpenWrt/ZWRT/g' package/base-files/files/bin/config_generate
#sed -i 's/ImmortalWrt/ZWRT/g' package/base-files/files/bin/config_generate

# 添加额外的软件包，echo 方式和git clone 方式二选一即可
#echo 'src-git kenzok8 https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git UA3F https://github.com/SunBK201/UA3F.git' >>feeds.conf.default
#git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
#git clone https://github.com/kenzok8/small.git package/small
#git clone https://github.com/SunBK201/UA3F.git package/UA3F
git clone https://github.com/stevenjoezhang/luci-app-adguardhome.git package/ADGH
echo 'src-git nss_packages https://github.com/qosmio/nss-packages.git
echo 'src-git sqm_scripts_nss https://github.com/qosmio/sqm-scripts-nss.git
echo 'src-git packages https://github.com/immortalwrt/packages.git
echo 'src-git luci https://github.com/immortalwrt/luci.git
echo 'echo 'src-git routing https://github.com/openwrt/routing.git
echo 'src-git telephony https://github.com/openwrt/telephony.git
echo 'src-git video https://github.com/openwrt/video.git
echo 'src-git https://github.com/daeuniverse/dae.git
echo 'src-git https://github.com/daeuniverse/daed.git
#src-git targets https://github.com/openwrt/targets.git
#src-git oldpackages http://git.openwrt.org/packages.git
#src-link custom /usr/src/openwrt/custom-feed
