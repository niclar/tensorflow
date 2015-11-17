#define NOMINMAX
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#undef ERROR
#define COMPILER_MSVC
#define EIGEN_COMP_MSVC _MSC_VER
#define __i386__
#define LANG_CXX11 1

#ifdef _WIN64
    typedef __int64 ssize_t;
#else
    typedef unsigned int ssize_t;
#endif

#define M_PI 3.14159265358979323846264338327950288