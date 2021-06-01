#!/usr/bin/python

import scanpy
from inspect import getmembers
from inspect import ismodule
from inspect import isfunction

f = open("functions.txt", "w+")
for name, obj in getmembers(scanpy, ismodule):
    for n, o in getmembers(obj, isfunction):
        f.write( "scanpy.{0}.{1}\n".format(name, n) )
f.close()

