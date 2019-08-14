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
    def py_wrap(FuncWrapper func, e, f):
        print(lambda_c(func.func, e, f))


cdef int mult(int  a, int b):
    return a*b

def get_include():
    directory = list()
    directory.append(Path(wr.__file__).resolve().parent)
    return directory

