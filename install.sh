#!/bin/bash

# 기존 Docker 환경을 사용하던 경우에, 설치되어있지 않을 확률이 높은 그룹, 패키지 Install
yum groupinstall -y "Development Tools"
yum install -y readline-devel

git clone https://github.com/dvorka/hstr.git
cd ./build/tarball && ./tarball-automake.sh && cd ../..
./configure && make && make install