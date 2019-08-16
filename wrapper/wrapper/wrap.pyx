from pathlib import Path
import wrap as wr

cdef class FuncWrapper:
    def __cinit__(self):
       self.func = NULL

    @staticmethod
    cdef FuncWrapper make_from_ptr(function_type f):
        cdef FuncWrapper out = FuncWrapper()
        out.func = f
        return out

cdef int lambda_c(function_type func, int c, int d):
    return func(c,d)

cdef class PyClass:
    @staticmethod
    def py_wrap(func, e, f):
        func2 = <FuncWrapper>func
        print(lambda_c(func2.func, e, f))



cdef int mult(int  a, int b):
    return a*b

def get_include():
    directory = list()
    directory.append(str(Path(wr.__file__).resolve()))
    return directory

