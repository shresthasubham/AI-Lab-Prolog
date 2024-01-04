 


append_list([], L, L).

append_list([H|T1], L, [H|T_result]):-
    append_list(T1, L, T_result).
