-module(euler004).

% Problem 004 from ProjectEuler.net
% A palindromic number reads the same both ways. 
% The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
% Find the largest palindrome made from the product of two 3-digit numbers.

% License: See README file

-export([euler004/0]).
-import(lib_euler).

euler004() -> 
    List = [A*B ||  A <- lists:seq(100,999),
                    B <- lists:seq(100,999),
                    lib_euler:is_palindromic(integer_to_list(A*B))],
            
    lists:max(List).