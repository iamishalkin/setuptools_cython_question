from wrapper cimport FuncWrapper

cdef int add_c_implementation(int  a, int b):
    return a+b

# `add` accessible from Python
add = FuncWrapper.make_from_ptr(add_c_implementation)