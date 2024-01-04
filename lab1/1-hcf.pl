
%hcf
hcf(X, 0, X).

hcf(Big, Small, Factor):-
    Small > 0,
    Z is Big mod Small,
    hcf(Small, Z, Factor).
