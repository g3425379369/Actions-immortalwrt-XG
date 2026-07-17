#!/bin/bash

# turboacc
curl -sSL https://raw.githubusercontent.com/mufeng05/turboacc/main/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh

cp -rf "$GITHUB_WORKSPACE/scripts/imm_xg-040-md_ubi/"* "$GITHUB_WORKSPACE/openwrt/"
ls -R "$GITHUB_WORKSPACE/openwrt/files"
