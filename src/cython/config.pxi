from config cimport *

@cython.wraparound(False)
@cython.boundscheck(False)
def version() -> str:
    '''algorithm library version'''
    return a_version().decode()
