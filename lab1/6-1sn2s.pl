
display([],[]).

display([H|T],[H_R|T_R]):-
    (  H = H_R,  (H = 1; H = 2), display(T, T_R) );
    (  (H \= 1; H \= 2), display(T, [H_R|T_R])  ).
