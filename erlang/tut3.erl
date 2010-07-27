-module(tut3).
-export([conv/1,len/1]).

conv({cen,X}) ->
    { in,X/2.54};
conv({in,Y}) ->
    { cen,Y*2.54}.


len([]) ->
    0;
len([A | B]) ->
    1 + len(B).

