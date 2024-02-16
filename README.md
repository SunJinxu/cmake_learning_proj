## 项目参考cmake官方教程
https://cmake.org/cmake/help/latest/guide/tutorial/index.html

## 项目目录
### Step 1: A Basic Starting Point
#### exercise01. Building a Basic Project
一个基本的cmake文件中包含三个部分：
* `cmake_minimum_required()` 用于限定cmake项目的版本，为在其他环境中编译提供基本的版本信息
* `project()` 用于确定项目名，同时也可以用于指定其他项目的版本号、语言等信息
* `add_executable()` 用于告诉cmake用指定的源文件编译形成一个新的可执行文件
#### exercise02. Specifying the C++ Standard
使用两个cmake定义项目的C++最低版本
* `CMAKE_CXX_STANDARD` 定义CXX_STANDARD值，定义项目C++编译语言标准C++98～C++26s
* `CMAKE_CXX_STANDARD_REQUIRED` 定义CXX_STANDARD_REQUIRED值，boolean类型，定义定义CXX_STANDARD设置是否开启
* `set()` 将一般变量、缓存entry、环境变量，如果是list需要使用逗号隔开
#### exercise03. Adding a Version Number and Configured Header File
使用CMake文件设置项目源码的版本号，并且可以在代码中打印出这个版本号。 
其原理是采用特殊的占位符，并在代码编译时将这些占位符使用cmake中设定的值来代替
* `<PROJECT-NAME>_VERSION_MAJOR` 第一个调用project()设置的<PROJECT-NAME>选项所设置的version号部分
* `<PROJECT-NAME>_VERSION_MINOR` 第二个调用project()设置的<PROJECT-NAME>选项所设置的version号部分
* `configure_file()` 将文件拷贝至另外一个位置并修改它的值（替换占位符），源文件的路径与CMAKE_CURRENT_SOURCE_DIR有关，目的文件与CMAKE_CURRENT_BINARY_DIR有关
* `target_include_directories()`  在编译一个指定目标时需要include的文件夹，并且该文件夹在此之前必须被add_executable()或add_library()所处理，并且不能为Alias

### Step 2: Adding a Library
#### exercise01. Creating a Library
使用library可以避免将所有的源文件都放在一个文件夹下进行构建的问题，而是可以将不同的文件归类放入对应的文件夹中
* `add_library()` 用于从指定的源文件中创建指定的库类型
* `add_subdirectory()` 添加需要构建的子文件夹，其中有CMakeLists.txt文件，同时也可以指定输出文件位置，其中的路径是相对于项目根目录的相对路径
* `target_include_directories()` 在编译一个指定目标时需要include的文件夹，并且目标在此之前必须被add_executable()或add_library()所处理，并且不能为Alias
* `target_link_libraries()` 在链接一个目标与/或它的依赖时指定的库或者标记，其中目标必须已经使用add_executable()或add_library()处理过，并且不能是Alias
* `PROJECT_SOURCE_DIR` 最后一次调用project()时所处的文件夹
#### exercise02. Adding an Option
允许用户根据需求选择调用自定义的sqrt库还是系统提供的sqrt库
* `if()` 类似于编程语言的条件语句用法，执行符合条件的代码块。可以对变量，文件，版本号等内容进行判断
* `option()` 提供一个用户可以条件选择的一个option选项
* `target_compile_definitions()` 指定编译目标的宏定义，定义提供给与预处理器使用。并且目标在此之前必须被add_executable()或add_library()所处理，并且不能为Alias

### Step3: Adding Usage Requirements for a Library
#### exercise01. Adding Usage Requirements for a Library
设置对目标参数的使用要求，来提供对库、可执行程序更好的控制。这些都是对于目标本身，部分涉及到调用到目标时设置的约束。
* ``target_compile_definitions()` 指定编译目标的宏定义，定义提供给与预处理器使用。目标在此之前必须被add_executable()或add_library()所处理，并且不能为Alias
* ``target_compile_options()` 为COMPILE_OPTIONS或INTERFACE_COMPILE_OPTIONS的目标属性提供选择，在编译指定目标时会被使用，目标在此之前必须被add_executable()或add_library()所处理，并且不能为Alias
* ``target_include_directories()` 指定在编译目标时需要include文件夹。目标在此之前必须被add_executable()或add_library()所处理，并且不能为Alias
```
# 意味着任何链接MathFunctions库的行为，都会同时导致包含当前的源码目录头文件
add_library(MathFunctions MathFunctions.cxx)
target_include_directories(MathFunctions INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
```
* ``target_link_directories()` 指定在编译目标时需要搜索文件夹是否包含相应的链接库文件
* ``target_link_options()` 为可执行文件、库文件链接步骤添加选项。目标在此之前必须被add_executable()或add_library()所处理，并且不能为Alias
* ``target_precompile_headers()` 添加需要被预编译的头文件，用于加快编译速度
* ``target_sources()` 用于指定编译目标时需要添加的源文件。目标在此之前必须被add_executable()或add_library()所处理，并且不能为Alias
#### exercise02. Setting the C++ Standard with Interface Libraries
使用INTERFACE类型库作为示例，描述generator expression的常用用法。同时为多个目标设置通用用法
* `add_library()` 用于从指定的源文件中创建指定的库类型
* `target_compile_features()` 表明目标的编译特性，如果编译时没有加入这种特性，会报错。会同时设置C++版本
* `target_link_libraries()` 表明目标编译时需要链接的库