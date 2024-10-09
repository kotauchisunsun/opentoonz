#!/bin/sh
pushd ../../
git diff master --name-only | grep -v thirdparty | egrep \\.\(c\|cpp\|h\|hpp\)$ | xargs clang-format -style=file -i
popd
