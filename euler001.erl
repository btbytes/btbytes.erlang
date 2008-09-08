-module(euler001).
-export([euler001/3]).

% If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
% The sum of these multiples is 23.
% Find the sum of all the multiples of 3 or 5 below 1000.
% License: See README file

euler001 (X,Y,N)  -> 
    lists:sum([A|| A <- lists:seq(1,N-1),  (A rem X  =:= 0) or  (A rem Y  =:= 0)]).