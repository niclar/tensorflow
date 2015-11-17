#define NOMINMAX
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#undef ERROR
#define COMPILER_MSVC
#define EIGEN_COMP_MSVC _MSC_VER
#define __i386__ //define for 4byte alignment, undefine for 8byte alignment
