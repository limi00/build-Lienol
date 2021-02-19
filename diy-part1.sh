#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git project https://github.com/project-openwrt/openwrt' feeds.conf.default
# sed -i '$a src-git openwrt https://github.com/openwrt/packages' feeds.conf.default

# # Define My Package
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/diy/luci-app-adguardhome
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/luci-app-usb3disable package/diy/luci-app-usb3disable
git clone https://github.com/immortalwrt/openwrt-passwall.git package/diy/luci-app-passwall
git clone https://github.com/linkease/ddnsto-openwrt.git package/diy/luci-app-ddnsto

rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon  #新的argon主题
