# Linux-enviroment
新装Linux系统时需要设置的一些配置文件

# 清单
1. C++开发环境
    1. build-essential: gcc, g++, make, binutils, libgcc-dev, libstdc++-dev
    ```bash
    sudo apt install build-essential

    # 安装没有的高版本gcc
    sudo add-apt-repository ppa:ubuntu-toolchain-r/test 
    sudo apt update
    sudo apt install gcc-13
    gcc-13 --version

    # 管理多版本软件包
    $ sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-13 90 \
    --slave /usr/bin/g++ g++ /usr/bin/g++-13 \
    --slave /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-13 \
    --slave /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-13 \
    --slave /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-13

    ```
    2. clang, clangd, clang-format, clang-tidy
    ```bash
    # To install a specific version of LLVM:
    wget https://apt.llvm.org/llvm.sh
    chmod +x llvm.sh
    sudo ./llvm.sh <version number>
    ```
    3. cmake

2. 各种软件源
    ```bash
    # apt，百度

    # pip
    vim ~/.config/pip/pip.conf
    # 写入内容
    [global]
        index-url = mirror-url
    ```


3. 各种配置文件
    1. gdbinit
    2. bashrc
    3. vimrc