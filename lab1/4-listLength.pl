
length_list([],0).

length_list([_H|T],Length):-
    length_list(T,SubLength),
    Length is SubLength + 1.
