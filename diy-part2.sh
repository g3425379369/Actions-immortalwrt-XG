#!/bin/bash
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# Modify default theme
# sed -i 's/luci-theme-material/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# DbusSmsForwardCPlus
git clone https://github.com/lkiuyu/DbusSmsForwardCPlus package/DbusSmsForwardCPlus

git clone https://github.com/gSpotx2f/luci-app-cpu-perf.git package/luci-app-cpu-perf
git clone https://github.com/gSpotx2f/luci-app-cpu-status.git package/luci-app-cpu-status
git clone https://github.com/gSpotx2f/luci-app-temp-status.git package/luci-app-temp-status

git clone https://github.com/g3425379369/UA3F.git package/UA3F

rm package/feeds/packages/mosdns
git clone https://github.com/sbwml/luci-app-mosdns.git package/luci-app-mosdns

# modify
rm -rf "$GITHUB_WORKSPACE/openwrt/package/kernel/r8152"
cp -rf "$GITHUB_WORKSPACE/scripts/imm_8916/"* "$GITHUB_WORKSPACE/openwrt/"
ls -R "$GITHUB_WORKSPACE/openwrt/files"

# inspect
echo ">>> OPP VOLTAGE COUNT: $(grep -c 'opp-microvolt' target/linux/msm89xx/dts/msm8916.dtsi) <<<"
