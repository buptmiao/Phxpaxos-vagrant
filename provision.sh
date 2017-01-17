#!/bin/bash

set -e

cd /vagrant

# Installing essential tool chain
sudo yum install -y wget git mercurial unzip gcc-c++ autoconf automake libtool

# Clone code base
git clone --recursive https://github.com/tencent-wechat/phxpaxos.git

cd phxpaxos

ROOT_DIR=`pwd`

cd third_party/leveldb

make

mkdir lib;cd lib;ln -s ../libleveldb.a libleveldb.a

# configure protobuf
cd $ROOT_DIR/third_party/

# remove
rm -rf protobuf

# download official v3.0.0 tar ball
wget https://github.com/google/protobuf/releases/download/v3.0.0/protobuf-cpp-3.0.0.tar.gz

tar xvf protobuf-cpp-3.0.0.tar.gz; mv protobuf-3.0.0 protobuf

cd protobuf

./autogen.sh

./configure CXXFLAGS=-fPIC --prefix=`pwd`

make && make install

cd $ROOT_DIR

./autoinstall.sh

make && make install

cd third_party/glog

./configure CXXFLAGS=-fPIC --prefix=`pwd`

make && make install

cd $ROOT_DIR/plugin

make && make install

cd $ROOT_DIR/sample/phxecho; make; mkdir -p log

cd $ROOT_DIR/sample/phxelection; make; mkdir -p log

cd $ROOT_DIR

echo "Install Phxpaxos Successfull"
