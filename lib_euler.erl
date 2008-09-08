% Library functions required for solving Project Euler problems.
% License: See README file

-module(lib_euler).
-author('Pradeep Kishore Gowda <pradeep@btbytes.com>').
-export([double/1, sum/1, is_palindromic/1]).

%% sum
sum(L) -> sum(L,0).

sum([], N)    -> N;
sum([H|T], N) -> sum(T, H+N).

%% double
double(N) -> 2*N.

%% is_palindromic
is_palindromic(L) when is_list(L) ->
    L == lists:reverse(L).
    
