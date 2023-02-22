
cmake_minimum_required(VERSION 3.2)
cmake_policy(SET CMP0074 NEW)

### Hunter snapshot that will be used ###
include("cmake/HunterGate.cmake")
HunterGate(
  URL "https://github.com/cpp-pm/hunter/archive/v0.24.15.tar.gz"
  SHA1 "8010d63d5ae611c564889d5fe12d3cb7a45703ac"
  FILEPATH "${CMAKE_CURRENT_LIST_DIR}/cmake/HunterConfig.cmake"
)

project(HunterSimple)

IF(0)
hunter_add_package(ZLIB)
hunter_add_package(OpenSSL)
hunter_add_package(OpenAL)
FIND_PACKAGE(ZLIB)
hunter_add_package(CURL)
hunter_add_package(libxml2)
hunter_add_package(freetype)
hunter_add_package(vorbis)
hunter_add_package(libogg)
hunter_add_package(giflib)
hunter_add_package(Jpeg)
hunter_add_package(PNG)
hunter_add_package(lzma)

hunter_add_package(Lua)
ENDIF()
#find_package(Lua CONFIG REQUIRED)

#hunter_add_package(luabind)
#FIND_PACKAGE(luabind)

# QT4, QT5?
#xrandr
#xrender
#xxf86vm
#zlib1h
#expat1
#gl1-mesa?

hunter_add_package(OpenSSL)
#get_cmake_property(_variableNames VARIABLES)
#list (SORT _variableNames)
#foreach (_variableName ${_variableNames})
#    message(STATUS "${_variableName}=${${_variableName}}")
#endforeach()
set(__HUNTER_FINAL_CMAKE_ARGS_msquic QUIC_BUILD_SHARED=OFF;QUIC_USE_SYSTEM_LIBCRYPTO=ON;OPENSSL_ROOT_DIR=${OPENSSL_ROOT})
hunter_add_package(msquic)

FILE(GLOB SRC *.cpp)
add_executable(HunterSimple ${SRC})

