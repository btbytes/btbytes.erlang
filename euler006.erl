-module(euler006).
-author('Pradeep Kishore Gowda <pradeep@btbytes.com>').
-export([euler006/0, sum/1, sum_of_squares/1, square_of_sums/1]).

% Problem 6
% The sum of the squares of the first ten natural numbers is,
%     1^2 + 2^2 + ... + 10^2 = 385
% The square of the sum of the first ten natural numbers is,
%     (1 + 2 + ... + 10)^2 = 55^2 = 3025
% Hence the difference between the sum of the squares of the 
% first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
% 
% Find the difference between the sum of the squares of the 
% first one hundred natural numbers and the square of the sum.
% License: GPL v3 or later. See README


sum([]) -> 0;
sum([H|T]) -> H + sum(T).  

sum_of_squares(N) ->
    sum([A*A|| A <- lists:seq(1,N)]).

square_of_sums(N) ->
    SQ = sum(lists:seq(1,N)),
    SQ*SQ.

euler006() -> abs(sum_of_squares(100) - square_of_sums(100)).