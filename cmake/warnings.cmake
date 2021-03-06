# include modules
include(CheckCCompilerFlag)
include(CheckCXXCompilerFlag)

get_property(enabled_languages GLOBAL PROPERTY ENABLED_LANGUAGES)

macro(check_flag)
  foreach(v ${ARGN})
    if(C IN_LIST enabled_languages)
      check_c_compiler_flag(${v} CC${v})

      if(CC${v} AND NOT ${v} IN_LIST C_FLAGS)
        list(APPEND C_FLAGS ${v})
      endif()
    endif()

    if(CXX IN_LIST enabled_languages)
      check_cxx_compiler_flag(${v} CXX${v})

      if(CXX${v} AND NOT ${v} IN_LIST CXX_FLAGS)
        list(APPEND CXX_FLAGS ${v})
      endif()
    endif()
  endforeach()
endmacro()

macro(check_flag_cc)
  foreach(v ${ARGN})
    if(C IN_LIST enabled_languages)
      check_c_compiler_flag(${v} CC${v})

      if(CC${v} AND NOT ${v} IN_LIST C_FLAGS)
        list(APPEND C_FLAGS ${v})
      endif()
    endif()
  endforeach()
endmacro()

macro(check_flag_xx)
  foreach(v ${ARGN})
    if(CXX IN_LIST enabled_languages)
      check_cxx_compiler_flag(${v} CXX${v})

      if(CXX${v} AND NOT ${v} IN_LIST CXX_FLAGS)
        list(APPEND CXX_FLAGS ${v})
      endif()
    endif()
  endforeach()
endmacro()

# GNU
if(
  "${CMAKE_C_COMPILER_ID}" MATCHES "GNU" OR
  "${CMAKE_CXX_COMPILER_ID}" MATCHES "GNU"
)
  check_flag_cc(-Winit-self)
  check_flag_cc(-Wc++-compat)
  check_flag_cc(-Wbad-function-cast)
  check_flag_cc(-Wstrict-prototypes)
  check_flag_cc(-Wold-style-definition)
  check_flag_cc(-Wmissing-prototypes)
  check_flag_cc(-Wnested-externs)
  check_flag(-Wdouble-promotion)
  check_flag(-Wnull-dereference)
  check_flag(-Wmissing-include-dirs)
  check_flag(-Wswitch-default)
  check_flag(-Wswitch-enum)
  check_flag(-Walloca)
  check_flag(-Wattributes)
  check_flag(-Wfloat-equal)
  check_flag(-Wshadow)
  check_flag(-Wundef)
  check_flag(-Wunused)
  check_flag(-Wunused-macros)
  check_flag(-Wcast-qual)
  check_flag(-Wcast-align)
  check_flag(-Wconversion)
  check_flag(-Wdate-time)
  check_flag(-Waggregate-return)
  check_flag(-Wmissing-declarations)
  check_flag(-Wpacked)
  check_flag(-Wpadded)
  check_flag(-Wredundant-decls)
  check_flag(-Winline)
  check_flag(-Winvalid-pch)
  check_flag(-Wdisabled-optimization)
  check_flag(-Wstack-protector)
  check_flag(-Wstringop-overflow)
  check_flag(-Wstringop-truncation)
  check_flag(-Walloc-zero)
  check_flag(-Wduplicated-branches)
  check_flag(-Wduplicated-cond)
  check_flag(-Wzero-length-bounds)
  check_flag(-Wtrampolines)
  check_flag(-Wunsafe-loop-optimizations)
  check_flag(-Wno-pedantic-ms-format)
  check_flag(-Wlogical-op)
endif()

# Clang
if(
  "${CMAKE_C_COMPILER_ID}" MATCHES "(Apple)?[Cc]lang" OR
  "${CMAKE_C_COMPILER_ID}" MATCHES "IntelLLVM" OR
  "${CMAKE_CXX_COMPILER_ID}" MATCHES "(Apple)?[Cc]lang" OR
  "${CMAKE_CXX_COMPILER_ID}" MATCHES "IntelLLVM"
)
  check_flag(-Weverything)
  check_flag(-Wno-reserved-id-macro)
  check_flag(-Wno-reserved-identifier)
  check_flag(-Wno-used-but-marked-unused)
  check_flag_xx(-Wno-c++98-compat-pedantic)
  check_flag_cc(-Wno-declaration-after-statement)
endif()
