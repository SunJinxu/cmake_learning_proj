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

### Step 4: Adding Generator Expressions
Generator expressions是在构建系统生成过程中处理每个配置项信息时生成的。
#### exercise01. Adding Compiler Warning Flags with Generator Expressions
常用的Generator expressions方式是条件性地添加一些编译选项标志；更高级的做法是使用INTERFACE库的方法设置，以拥有传递性
* `cmake-generator-expressions(7)` 有相当多expression类型，参考https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html
```
# 一些编译选项
$<COMPILE_LANG_AND_ID:language,compiler_ids>
当实际上执行解释编译的语言或者编译器id与预期的逗号分隔的任意编译器id符合时为true，否则为false

```
* `cmake_minimum_required()` 用于限定cmake项目的版本，为在其他环境中编译提供基本的版本信息
* `set()` 将一般变量、缓存entry、环境变量，如果是list需要使用逗号隔开
* `target_compile_options()` 为COMPILE_OPTIONS或INTERFACE_COMPILE_OPTIONS的目标属性提供选择，在编译指定目标时会被使用，目标在此之前必须被add_executable()或add_library()所处理，并且不能为Alias

### Step 5: Installing and Testing
对于一个项目，不光应该可以生成可执行文件，同时也有一些是installable的
#### exercise01. Install Rules
* `install()` 功能是为指定目标生成安装规则，其中可以指定安装目标和安装路径等信息
```
DESTINATION <dir> 指定项目的安装位置
PERMISSIONS <permission>... 指定安装项目的访问权限
CONFIGURATIONS <config>... 指定生成Debug、Release版本或其他类型的目标文件
COMPONENT <component> 指定某个安装组件与哪种安装组件组合，比如Runtime或者Deployment
EXCLUDE_FROM_ALL 在full installation过程中指定排除在外的文件
RENAME <name> 在安装过程中为文件指定的另外的别名
OPTIONAL 表明某组件是可选的，即使缺少也不生成报错信息
```
#### exercise02. Testing Support
CTest提供了对项目的测试功能，并且与googletest这种测试框架具有一定的相关性
* `enable_testing()` 允许对当前文件夹及下属文件夹开启测试功能
* `add_test()` 添加一个通过ctest运行的测试，可以指定名字、断言、文件夹以及属性等
* `function()` 编写一个方程，可以接受参数并且可以被调用
* `set_tests_properties()` 使用generator expressions为测试设置属性，如果没有查找到该test会报错
* `ctest` 是cmake测试驱动项目的可执行部分

### Step6: Adding Support for a Testing Dashboard
将CTest的测试结果放入Dashboard中
#### exercise01. Send Results to a Testing Dashboard
* `ctest(1)` 是cmake测试驱动项目的可执行部分
* `include()` 加载并执行给定文件中的CMake代码
* `CTest` 使用CTest/CDash配置一个项目的测试部分，需要在顶层目录中的CMakeLists.txt中写入include(CTest)，同时要创建CTestConfig.cmake文件，用于配置CTest

### Step 7: Adding System Introspection
这部分考虑到了一些平台上缺少cmake中的一些特性，例如`log`和`exp`方程的情况
#### exercise01. Assessing Dependency Availability
根据平台系统的不同更改cmake的实现
* `CheckCXXSourceCompiles` 检查给定C++源码是否可以被编译并链接到可执行文件中（必须具备main方程），结果缓存在resultVar中
* `target_compile_definitions()` 指定编译目标的宏定义，定义提供给与预处理器使用。并且目标在此之前必须被add_executable()或add_library()所处理，并且不能为Alias

### Step 8: Adding a Custom Command and Generated File
使用用户自定义命令生成文件，案例中生成了一张迭代表使用
* `add_custom_command` 使用用户自定义命令生成文件

### Step 9: Packaging an Installer
使用CPack为不同的用户提供binary版和source版的安装包
对顶层CMakeLists.txt文件设置的具体形式为:  
```
include(InstallRequiredSystemLibraries)
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/License.txt")
set(CPACK_PACKAGE_VERSION_MAJOR "${Tutorial_VERSION_MAJOR}")
set(CPACK_PACKAGE_VERSION_MINOR "${Tutorial_VERSION_MINOR}")
set(CPACK_SOURCE_GENERATOR "TGZ")
include(CPack)
```
CPack也有一系列generators参数可以进行自定义配置，也可以使用`cpack --config CPackSourceConfig.cmake`这种事先编写好的pack配置文件进行打包

### Step 10: Selecting Static or Shared Libraries
使用`BUILD_SHARED_LIBS`变量来决定生成动态库、静态库或者其他类型，此变量需要放在构建目标项目的顶级目录cmake文件中的
* `BUILD_SHARED_LIBS` 此变量通常与option()联用，一旦开启，那么库除非指定为静态，否则都被构建为动态库
* `POSITION_INDEPENDENT_CODE` 该标记表明要对该目标采用PIC编译
```
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}") # 静态库输出目录设置
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}") # 动态库输出目录设置
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}") # 可执行文件输出目录设置
```

### Step 11: Adding Export Configuration
添加一些必要信息，以便其他项目在本地构建、安装或打包的时候能顺利进行 
* `install()` 中加入`EXPORT`关键字，从installation tree中列举的install command中设生成一个import所有targets的CMakeLists.txt
* `find_package()` 命令可以从外部寻找库，并根据给出的额外信息进行加载