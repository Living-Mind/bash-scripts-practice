#!/usr/bin/python3
import re
import sys

psum = 0
nnums = 0
regex = "^[-+]?[0-9]+$"
pregex = "^[+]?[0-9]+$"
nregex = "^-[0-9]+$"

if len(sys.argv)-1 == 0:
    raise Exception("Input some whole numbers!")

for n in sys.argv[1:]:
    if re.search(regex, n):
        pass
    else:
        raise Exception("bad")

    if re.search(pregex, n):
        psum += int(n)
        
    elif re.search(nregex, n):
        nnums += 1

print(f"Sum of positive numbers: {psum}\nNumber of negative numbers: {nnums}")