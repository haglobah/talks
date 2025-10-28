#!/usr/bin/env python3

# region basic
hello = lambda name: print("Hello " + name)
# endregion

# region problem
λs = []

for i in range(9):
    λs.append(lambda n: n + i)

print(λs)

for l in λs:
    print(l(0))
# endregion

# region solution
objs = []

class Closure:
    def call(self, arg):
        raise NotImplementedError

class PlusN(Closure):
    def __init__(self, n): self.n = n
    def call(self, x): return x + self.n

for i in range(9):
    objs.append(PlusN(i))

for o in objs:
    print(o.call(0))
# endregion
