# This file has a lot of CACHE STRING "" FORCE because cmake likes caching
# things and won't use what we do in here unless we CACHE FORCE it.
#
# See: https://cmake.org/pipermail/cmake/2012-January/048429.html
#      http://stackoverflow.com/a/30217088

# the name of the target operating system
set(CMAKE_SYSTEM_NAME Windows)

set(COMPILER_PREFIX "x86_64-w64-mingw32")

# which compilers to use for C and C++
set(CMAKE_C_COMPILER   x86_64-w64-mingw32-gcc )
# set(CMAKE_CXX_COMPILER x86_64-w64-mingw32-g++ )
set(CMAKE_RC_COMPILER  x86_64-w64-mingw32-windres )

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -static -DAL_LIBTYPE_STATIC" CACHE STRING "" FORCE)

# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static-libgcc -static -O3 -s -w -DAL_LIBTYPE_STATIC" CACHE STRING "" FORCE)

# set(CMAKE_STATIC_LINKER_FLAGS "")

set(INCLUDE_DIRECTORIES SYSTEM /usr/share/mingw-w64/include/)

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(WIN32 TRUE) # This is for cmake
set(WIN64 TRUE) # This is for uTox lib dirs
set(UNIX FALSE)

set(ENABLE_ASAN OFF CACHE STRING "" FORCE)
