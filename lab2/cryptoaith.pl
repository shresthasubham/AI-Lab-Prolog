% problem=forty+ten+ten=sixty
:- use_module(library(clpfd)).
% Define domains
domain([0,1,2,3,4,5,6,7,8,9]).

% Define the solution predicate
solution([F,O,R,T,Y,E,N,S,I,X]) :-
    C4=1,
    T=8,
    O=9,
    S=3,
    domain(Domain),
    member(T, Domain),
    member(E, Domain),
    member(N, Domain),
    member(Y, Domain),
    member(O, Domain),
    member(R, Domain),
    member(F, Domain),
    member(I, Domain),
    member(S, Domain),
    member(X, Domain),

    % Constraints to ensure distinct values
    all_diff([F,O,R,T,Y,E,N,S,I,X]),

    % Computation for solution
    Y + N + N #= Y + 10*C1,
    C1 + T + E + E #= T + 10*C2,
    C2 + R + T + T #= X + 10*C3,
    C3 + O #= I + 10*C4,
    C4 + F #= S.

% Define the all_diff predicate
all_diff([]).
all_diff([H|T]) :- \+ member(H, T), all_diff(T).
        % \+ checks eg : \+member(3,[1,2,4,5]) gives true
