from setuptools import setup, Extension
from Cython.Build import cythonize
from Cython.Distutils import build_ext

NAME = "wrapper"

ext_abc = Extension(name="wrapper.wrap",
                    sources=["wrapper/wrap.pyx"]
                    )

EXTENSIONS = [
    ext_abc
]

if __name__ == "__main__":
    setup(
        zip_safe=False,
        name=NAME,
        packages=["wrapper"],
        cmdclass={"build_ext": build_ext},
        ext_modules=cythonize(EXTENSIONS, language_level=3),
        package_data = {
            "wrapper": ["*.pxd"],
    },
        )