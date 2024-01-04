
del([A|T],A,T).

del([H|T], A, [H_Result|T_Result]):-
    ( H \= A, H = H_Result, del(T, A, T_Result)  );
    ( H = A, H \= H_Result, del(T, A, T_Result)  ).

