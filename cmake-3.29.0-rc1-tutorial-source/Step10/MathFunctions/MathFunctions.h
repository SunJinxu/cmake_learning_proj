#if defined(_WIN32)
#  if defined(EXPORTING_MYMATH)
#    define DECLSPEC __declspec(dllexport)
#  else
#    define DECLSPEC __declspec(dllimport)
#  endif
#else // non windows
#  define DECLSPEC
#endif

// DECLSPEC 是一个预处理器宏，通常用于指示编译器如何处理函数以实现跨库导出
namespace mathfunctions {
double DECLSPEC sqrt(double x);
}
