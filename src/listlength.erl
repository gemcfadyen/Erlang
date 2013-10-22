-module(listlength).
-export([len/1, tail_len/1, reverse/1, tail_reverse/1]).

len([]) -> 0;
len([H|T]) -> 1 + len(T).

tail_len(L) -> tail_len(L, 0).
tail_len([], Acc) -> Acc;
tail_len([H|T], Acc) -> tail_len(T, Acc+1).

reverse([]) -> [];
reverse([H|T]) -> reverse(T) ++ [H].

tail_reverse(L) -> tail_reverse(L, []).
tail_reverse([], Acc) -> Acc;
tail_reverse([H|T], Acc) -> tail_reverse(T, [H|Acc]).