from setuptools import setup, Extension
from Cython.Build import cythonize
from Cython.Distutils import build_ext
import wrap

NAME = 'wtest'

ext_abc = Extension(name= "cust",
                    sources=["cust.pyx"],
                    include_dirs=[str(x) for x in wrap.get_include()]
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

