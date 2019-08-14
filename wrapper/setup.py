import numpy as np
from setuptools import setup, Extension
from Cython.Build import cythonize
from Cython.Distutils import build_ext

NAME = 'test'

ext_abc = Extension(name="wrap",
                    sources=["wrap.pyx"]
                    )

EXTENSIONS = [
    ext_abc
]

if __name__ == "__main__":
    setup(
        zip_safe=False,
        name=NAME,
        cmdclass={"build_ext": build_ext},
        ext_modules=cythonize(EXTENSIONS, language_level=3)
        )

