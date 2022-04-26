# Macaulay2-Package-Template
This repository is a template for writing and organizing Macaulay2 packages. The Python script `compile.py` iterates through `pkg_src/M2Template.m2` and replaces every instance of `load "file.m2"` with the contents of `file.m2`. The final product is then generated as `M2Template.m2` in the top directory. This allows you to move large portions of code into separate files to improve readability while developing.

This repository was inspired by Jay White's [MaxBettiNumbers](https://github.com/JayWhite2357/MaxBettiNumbers) repository.