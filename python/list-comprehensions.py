#!/usr/bin/env python

a = [i for i in range(10) if i % 2 == 0 ]

print a


def _treatment(pos, element):
    return '%d: %s' % (pos, element)

seq = ["um", "dois", "tres" ]
a = [_treatment(i, el) for i , el in enumerate (seq)]

print a
