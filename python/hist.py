#!/usr/bin/env python
# _*_ coding: UTF-8 _*_
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Library General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#
# Copyright 2010 Fernando Henrique R. Silva (liquuid@gmail.com)
# http://www.linuxmafia.com.br

import sys
import matplotlib.pyplot as plt
import matplotlib.patches as patches
import matplotlib.path as path
import numpy as np

mu, sigma = 20, 15

try: 
    sys.argv[1]
except:
    sys.exit()

fil = open(sys.argv[1]).read()

x = fil.split()
y = []
for i in x:
    try:
        y.append(int(i))
    except:
        pass

x = y

fig = plt.figure()
ax = fig.add_subplot(111)
n, bins = np.histogram(x,500)

left = np.array(bins[:-1])
right = np.array(bins[1:])
bottom = np.zeros(len(left))
top = bottom + n

XY = np.array([[left,left,right,right], [bottom,top,top,bottom]]).T


# get the Path object
barpath = path.Path.make_compound_path_from_polys(XY)

# make a patch out of it
patch = patches.PathPatch(barpath, facecolor='blue', edgecolor='gray', alpha=0.8)
ax.add_patch(patch)

# update the view limits
ax.set_xlim(left[0], right[-1])
ax.set_ylim(bottom.min(), top.max())

plt.xlabel('tempo (segundos)')
plt.ylabel('quantidade')
plt.title('Histograma por tempo:')
plt.grid(True)
 
plt.show()
