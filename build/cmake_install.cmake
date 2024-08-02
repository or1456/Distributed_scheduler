# Install script for directory: /home/or/DSI_test/openairinterface5g

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/or/DSI_test/openairinterface5g/build/ldpc/generator_bnProc/cmake_install.cmake")
  include("/home/or/DSI_test/openairinterface5g/build/ldpc/generator_bnProc_avx512/cmake_install.cmake")
  include("/home/or/DSI_test/openairinterface5g/build/ldpc/generator_cnProc/cmake_install.cmake")
  include("/home/or/DSI_test/openairinterface5g/build/ldpc/generator_cnProc_avx512/cmake_install.cmake")
  include("/home/or/DSI_test/openairinterface5g/build/common/cmake_install.cmake")
  include("/home/or/DSI_test/openairinterface5g/build/doc/cmake_install.cmake")
  include("/home/or/DSI_test/openairinterface5g/build/openair1/cmake_install.cmake")
  include("/home/or/DSI_test/openairinterface5g/build/openair2/cmake_install.cmake")
  include("/home/or/DSI_test/openairinterface5g/build/openair3/cmake_install.cmake")
  include("/home/or/DSI_test/openairinterface5g/build/radio/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/or/DSI_test/openairinterface5g/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
