#!/usr/bin/env bash

set -euo pipefail

sudo apt-get update
sudo apt-get install -y bison ca-certificates ccache clang cmake curl file flex gcc g++ git make ninja-build python3 texinfo zlib1g-dev libssl-dev libelf-dev patchelf

rel_date="$(date "+%Y%m%d")"
git config --global user.name "HanyanI."
git config --global user.email "yuhan@rsyhan.me"

git clone --depth 1 "https://$GITID:$GITPWD@github.com/rsyhan/Xinyu-Clang-Build" build
cd build
./build-tc.sh
ls
cd install
ls
git add . && git commit -s "Xinyu Clang: $rel_date"
git push "https://$GITID:$GITPWD@github.com/rsyhan/Xinyu-Clang-Build" HEAD:Xinyu-Clang-$rel_date

