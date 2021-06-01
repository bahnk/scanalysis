#!/usr/bin/python

import scanpy
import inspect
from inspect import signature
from inspect import isfunction
from typing import get_args

t = set()

f = open("selected_functions.txt", "r")
for fct in f:
    s = signature(eval(fct))
    print(fct)
    for name, arg in s.parameters.items():
        #print(arg.name, arg.annotation, arg.annotation, type(arg.annotation), get_args(arg.annotation))
        #print(arg.name, type(arg.default), arg.annotation, arg.kind)
        print(arg.name, arg.default)
        t.add(arg.annotation)
    print("\n")
f.close()
