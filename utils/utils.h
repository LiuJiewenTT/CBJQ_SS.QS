#ifndef UTILS_UTILS_H
#define UTILS_UTILS_H

#include <stddef.h>
// #include <wchar.h>

wchar_t *convertCharToWChar(const char* message);

#define WCharChar(x) (convertCharToWChar(x))

#define free2NULL(x) free(x);x=NULL;

// 拼接命令行参数成一个字符串
char* concatenateArgs(int argc, const char *argv[]);

#include <jagged_array.h>


#endif // UTILS_UTILS_H