#ifdef WIN32
#include <Shlwapi.h>

int fnmatch(const char* a_pattern, const char* a_basename, int /*flags*/)
{
	return PathMatchSpecA(a_basename, a_pattern);
}

#endif