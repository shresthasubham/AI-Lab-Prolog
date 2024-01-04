 
sum([],0).

sum([H|T],Sum):-
    sum(T,Add),
    Sum is Add + H.
