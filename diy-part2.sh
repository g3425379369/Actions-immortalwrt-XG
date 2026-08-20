#!/bin/bash

git clone https://github.com/g3425379369/luci-app-airoha-npu package/luci-app-airoha-npu

# temp
git clone https://github.com/gSpotx2f/luci-app-cpu-perf.git package/luci-app-cpu-perf
git clone https://github.com/gSpotx2f/luci-app-cpu-status.git package/luci-app-cpu-status
git clone https://github.com/gSpotx2f/luci-app-temp-status.git package/luci-app-temp-status

git clone https://github.com/g3425379369/UA3F.git package/UA3F

rm package/feeds/packages/mosdns
git clone https://github.com/sbwml/luci-app-mosdns.git package/luci-app-mosdns

rm package/feeds/packages/v2ray-geodata
git clone https://github.com/g3425379369/v2ray-geodata package/v2ray-geodata

# modify
rm -rf "$GITHUB_WORKSPACE/openwrt/package/system/apk"
cp -rf "$GITHUB_WORKSPACE/scripts/imm_XG-040G-MD_UBI/"* "$GITHUB_WORKSPACE/openwrt/"
ls -R "$GITHUB_WORKSPACE/openwrt/files"
