# Clion调试

##### 配置CMake

- Build directory是CMake的编译目录

- CMake options是CMake的命令参数

  CMake options填 ".." 表示要在子目录build中编译整个项目

![](图片/Clion的cmake配置.png)

配置完成后出现configurations

![](图片/cmake配置效果.png)

##### 配置observer运行参数

![](图片/observer运行参数.png)

就可以执行observer和obclient并且在代码处打断点调试了。