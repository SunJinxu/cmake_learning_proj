## 项目参考cmake官方教程
https://cmake.org/cmake/help/latest/guide/tutorial/index.html

## 项目目录
### 1 exercise01 Building a Basic Project
一个基本的cmake文件中包含三个部分：
* `cmake_minimum_required()` 用于限定cmake项目的版本，为在其他环境中编译提供基本的版本信息
* `project()` 用于确定项目名，同时也可以用于指定其他项目的版本号、语言等信息
* `add_executable()` 用于告诉cmake用指定的源文件编译形成一个新的可执行文件

### 2 exercise01 Specifying the C++ Standard
使用两个cmake定义项目的C++最低版本
* `CMAKE_CXX_STANDARD` 定义CXX_STANDARD值，定义项目C++编译语言标准C++98～C++26s
* `CMAKE_CXX_STANDARD_REQUIRED` 定义CXX_STANDARD_REQUIRED值，boolean类型，定义定义CXX_STANDARD设置是否开启
* `set()` 将一般变量、缓存entry、环境变量，如果是list需要使用逗号隔开

### 3 exercise03 Adding a Version Number and Configured Header File
使用CMake文件设置项目源码的版本号，并且可以在代码中打印出这个版本号。 
其原理是采用特殊的占位符，并在代码编译时将这些占位符使用cmake中设定的值来代替
* `<PROJECT-NAME>_VERSION_MAJOR` 第一个调用project()设置的<PROJECT-NAME>选项所设置的version号部分
* `<PROJECT-NAME>_VERSION_MINOR` 第二个调用project()设置的<PROJECT-NAME>选项所设置的version号部分
* `configure_file()` 将文件拷贝至另外一个位置并修改它的值（替换占位符），源文件的路径与CMAKE_CURRENT_SOURCE_DIR有关，目的文件与CMAKE_CURRENT_BINARY_DIR有关
* `target_include_directories()`  在编译一个指定目标时需要include的文件夹，并且该文件夹在此之前必须被add_executable()或add_library()所处理，并且不能为Alias
