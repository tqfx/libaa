from cpython.mem cimport PyMem_Malloc, PyMem_Realloc, PyMem_Free
from cpython cimport array
cimport cython

import typing as _typing

include "config.pxi"
