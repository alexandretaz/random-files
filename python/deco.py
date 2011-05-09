#!/usr/bin/env python
class my(object):
    def __init__(self,f):
        print 'in my.__init__'
        f()

    def __call__(self):
        print 'ins my.__call__'

@my
def fun():
    print 'in func()'

print 'fin'

fun()
