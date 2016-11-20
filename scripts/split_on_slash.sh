#!/bin/bash

# ${foo##*/} is for file.dat
# ${foo%/*} is for /this/folder/
foo="/this/folder/file.dat" ; echo "${foo##*/}" ; echo "${foo%/*}"
