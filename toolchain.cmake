set(CMAKE_SYSTEM_NAME Generic)                                                                  #Defines target system. "Generic" for embedded. Could be "Windows" or "Linux" as well
set(CMAKE_SYSTEM_PROCESSOR ARM)                                                                 #Defines target system processor. "Arm" for an arm processor

set(TOOLCHAIN_PATH "C:/Program Files (x86)/GNU Arm Embedded Toolchain/9 2020-q2-update/bin/")   #Define path to arm gnu toolchain folder
set(BINUTILS_PATH ${TOOLCHAIN_PATH})                                                            #Define path to arm gnu toolchain binary files
set(TOOLCHAIN_PREFIX ${TOOLCHAIN_PATH}arm-none-eabi-)                                           #Defines prefix for arm gnu toolchain binaries (all begin with "arm-none-eabi")

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)                                               #Type of file generated when using the "try_compile()" command. Can be executable or static library. Embedded=Static Library

set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc.exe)                                                #C compiler executable location
set(CMAKE_ASM_COMPILER ${CMAKE_C_COMPILER})                                                     #C assembler executable location
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++.exe)                                              #C++ compiler executable location

set(CMAKE_OBJCOPY ${TOOLCHAIN_PREFIX}objcopy CACHE INTERNAL "objcopy tool")                     #Obj Copy executable: Cache variables keep their values between invocations of cmake. Internal = Not show in GUI Tools
set(CMAKE_SIZE_UTIL ${TOOLCHAIN_PREFIX}size CACHE INTERNAL "size tool")                         #Size Utility executable

set(CMAKE_FIND_ROOT_PATH ${BINUTILS_PATH})                                                      #Semicolon-separated list of root paths to search on the filesystem.
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)                                                    #Variable controls whether the CMAKE_FIND_ROOT_PATH and CMAKE_SYSROOT are used by find_program().  NEVER: Roots in CMAKE_FIND_ROOT_PATH will be ignored and only the host system root will be used
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)                                                     #Variable controls whether the CMAKE_FIND_ROOT_PATH and CMAKE_SYSROOT are used by find_library().  ONLY: Roots in CMAKE_FIND_ROOT_PATH will be searched.
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)                                                     #Variable controls whether the CMAKE_FIND_ROOT_PATH and CMAKE_SYSROOT are used by find_path().  ONLY: Roots in CMAKE_FIND_ROOT_PATH will be searched.