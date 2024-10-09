#!/bin/bash
pushd ../../
find . | egrep \\.\(c\|cpp\|h\|hpp\)$ | xargs clang-format -style=file -i
popd
