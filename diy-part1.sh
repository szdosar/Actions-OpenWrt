#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i -E 's/#(src-git.+)(helloworld.+)/\1\2/' feeds.conf.default
# sed -i '$a src-git passwall_packages https://github.com/sbwml/openwrt_helloworld.git' feeds.conf.default
# sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main' feeds.conf.default
sed -i '1i src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '2i src-git small https://github.com/kenzok8/small' feeds.conf.default
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package.git;main' feeds.conf.default
# sed -i '$a src-git other https://github.com/Lienol/openwrt-package.git;other' feeds.conf.default
# sed -i '$a src-git small https://github.com/kenzok8/small.git' feeds.conf.default
# sed -i '$a src-git openwrtpackages https://github.com/kenzok8/openwrt-packages.git' feeds.conf.default
