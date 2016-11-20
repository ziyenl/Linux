#!/bin/bash

# ${foo##*/} is for file.dat
# ${foo%/*} is for /this/is/to/my/
foo="/this/is/to/my/file.dat" ; echo "${foo##*/}" ; echo "${foo%/*}"
