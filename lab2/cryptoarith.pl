% Define the domains
int_list = integer*

% Define the predicates
solution(int_list).
member(integer, int_list).

% Define the clauses
solution([]).
solution([S, E, N, D, M, O, R, Y]) :-
    C4 = 1,
    member(C1, [0, 1]),
    member(C2, [0, 1]),
    member(C3, [0, 1]),
    member(E, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(N, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(D, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(M, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(O, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(R, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(Y, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    member(S, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]),
    % Ensure distinct values for the variables
    all_distinct([S, E, N, D, M, O, R, Y]),
    % The addition problem constraints
    D + E =:= Y + 10 * C1,
    N + R + C1 =:= E + 10 * C2,
    E + O + C2 =:= N + 10 * C3,
    S + M + C3 =:= O + 10 * C4,
    M =:= C4.

% Define the member predicate
member(X, [X | _]).
member(X, [_ | Z]) :-
    member(X, Z).

% Define the goal

