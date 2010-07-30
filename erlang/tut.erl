-module(tut).
-export([double/1]).
-export([fac/1,mult/2,mult/1]).

double(X) ->
    2 * X.

fac(1) ->
    1;
fac(N) ->
    N * fac(N -1).

mult(X,Y) ->
    X * Y.
mult(X) ->
    X * 2.
