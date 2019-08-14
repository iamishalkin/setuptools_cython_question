ctypedef int (*function_type)(int  a, int b)

cdef class FuncWrapper:
    cdef function_type func

    @staticmethod
    cdef FuncWrapper make_from_ptr(function_type f)

cdef class PyClass:
    pass