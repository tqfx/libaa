# Set the compiler C standard
macro(set_c_standard variable)
  set(CMAKE_C_EXTENSIONS OFF)
  set(CMAKE_C_STANDARD ${variable})
  set(CMAKE_C_STANDARD_REQUIRED ON)
endmacro()

# Set the compiler C++ standard
macro(set_cxx_standard variable)
  set(CMAKE_CXX_EXTENSIONS OFF)
  set(CMAKE_CXX_STANDARD ${variable})
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
endmacro()

# default C standard
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 11)
endif()

if(NOT CMAKE_C_EXTENSIONS)
  set(CMAKE_C_EXTENSIONS OFF)
endif()

if(NOT CMAKE_C_STANDARD_REQUIRED)
  set(CMAKE_C_STANDARD_REQUIRED ON)
endif()

# default C++ standard
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
endif()

if(NOT CMAKE_CXX_EXTENSIONS)
  set(CMAKE_CXX_EXTENSIONS OFF)
endif()

if(NOT CMAKE_CXX_STANDARD_REQUIRED)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
endif()

# export compile commands
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
