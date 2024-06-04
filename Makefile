# Makefile

# 编译器
CC = M:\\Temp_Proj\\A29\\x64\\winlibs-x86_64-mcf-seh-gcc-13.2.0-llvm-16.0.6-mingw-w64ucrt-11.0.1-r2\\mingw64\\bin\\gcc.exe

# 编译选项
CFLAGS = -I"./"

# 源文件和目标文件
SRC = CBJQ_SS.QS.c
OBJ = \
build/build/main.o\
build/build/cJSON.o

# 目标可执行文件
TARGET = build/bin/CBJQ_SS.QS.exe

# 目标规则
all: $(TARGET)

# 链接目标文件生成可执行文件
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# 编译源文件生成目标文件
# build/%.o: src/%.c
# 	$(CC) $(CFLAGS) -c $< -o $@
build/build/main.o: CBJQ_SS.QS.c
	$(CC) $(CFLAGS) -c $< -o $@

build/build/cJSON.o: utils/cJSON/cJSON.c
	$(CC) $(CFLAGS) -c $< -o $@

# 清理生成的文件
clean:
	del /F $(OBJ) $(TARGET)

prepare_dir:
	mkdir build\build
	mkdir build\bin

.PHONY: all clean prepare_dir