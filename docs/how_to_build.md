# How to build

##### Build dependencies

下载并编译安装依赖

- ##### build libevent

   在源码根目录 /db_impl_course 下执行：

   ```shell
   cd deps
   git submodule add https://github.com/libevent/libevent deps/libevent
   cd libevent
   git checkout release-2.1.12-stable
   mkdir build
   cd build
   cmake .. -DEVENT__DISABLE_OPENSSL=ON
   make
   sudo make install
   ```

- ##### build google test

   在源码根目录 /db_impl_course 下执行：

   ```shell
   cd deps
   git submodule add https://github.com/google/googletest deps/googletest
   cd googletest
   mkdir build
   cd build
   cmake ..
   make
   sudo make install
   ```

- ##### build jsoncpp

   在源码根目录 /db_impl_course 下执行：

   ```shell
   cd deps
   git submodule add https://github.com/open-source-parsers/jsoncpp.git deps/jsoncpp
   cd jsoncpp
   mkdir build
   cd build
   cmake -DJSONCPP_WITH_TESTS=OFF -DJSONCPP_WITH_POST_BUILD_UNITTEST=OFF ..
   make
   sudo make install
   ```

> 如果github连接不上，可把上述几个网址换成：
>
> ```
> https://gitee.com/zhouhuahui/libevent
> https://gitee.com/zhouhuahui/googletest
> https://gitee.com/zhouhuahui/jsoncpp.git
> ```

##### Build miniob

编译 miniob

在源码根目录 /db_impl_course 下执行：

```shell
mkdir build
cd build
cmake ..	# 如果想要编译DEBUG版本以方便调试，执行 cmake -DDEBUG=ON ..
make
```

##### Run miniob

- 运行服务端

  一个 shell 在源码根目录 /db_impl_course 下执行：

  ```shell
  ./build/bin/observer -f ./etc/observer.ini
  ```

  - observer 表示服务端程序
  - -f 表示参数 observer.ini 是配置文件，目前提供了样本配置文件，在源码的etc目录下

- 运行客户端

  另一个 shell 在源码根目录 /db_impl_course 下执行：

  ```shell
  ./build/bin/obclient
  ```

  - obclient 表示客户端程序

  运行客户端后即可输入数据库命令，如 show tables 等。注意每个db命令都要以分号结束。

  ```shell
  miniob >help;
  miniob >show tables;
  miniob >exit;
  ```

  
