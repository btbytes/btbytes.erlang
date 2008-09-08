-module(lib_euler).
-export([double/1]).
-export([sum/1]).
-export([is_palindromic/1]).

% Library functions required for solving Project Euler problems.
% License: See README file

%% sum
sum(L) -> sum(L,0).

sum([], N)    -> N;
sum([H|T], N) -> sum(T, H+N).

%% double
double(N) -> 2*N.

%% is_palindromic

is_palindromic(L) when is_list(L) ->
    L == lists:reverse(L).
    