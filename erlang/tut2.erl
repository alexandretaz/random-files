-module(tut2).
-export([conv/2]).

conv(M, in) ->
    M / 2.54;
conv(N, cen) ->
    N * 2.54.
