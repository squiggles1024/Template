Things to change when porting to another STM32:

Launch.json: executable name, device name, SVD file
CMakeLists.txt: Project Name, Linker file, src files, defines
Other: Import CMSIS files (stm32fxx.h, stm32f412rx.h, system_stm32f4xx.c, system_stm32f4xx.h, cmsis_compiler, cmsis_gcc, cmsis_version, core_cm4, mpu_armv7)