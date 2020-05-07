% David Meyer
% Project 7
% 5/30/2020

% 146    394    882    1730    3082
%     248   488     848      1352
%         240   360     504
%            120    144
%                24



rowBelow([X],[X]) :- !.         % [X] only holds 1 num, not list,       X can hold a list I guess.
rowBelow(R,R1) :-               % R is regular list,
    diffPairs(R, R1).               % R1 is inner row

    %write(R1 * "* \n" ),
    %write(R1 + " ++  "),

    %append(R1,R,RR).                %Flip R1 and R to flip the tree





diffPairs([_],[]) :- !.              % Only 1 element, no diff
diffPairs([A,B|Ns], [S|T]) :-
    %write(A),
    S is B-A,                       %diff of first two elements
    %write(S - " "),

    %write(T + "+++"),
    diffPairs([B|Ns],T).            % B for diff of next two



myLast( [Head], X ) :-
    X = Head.
myLast( [_|T], X ) :-
    myLast(T,X).



%addList(_,_,D) :- !.
addList(C, _, D) :-
    D is 0 + C.
addList(C, B, D) :-
    D is C + B.



nextItem( _, [], _) :-  !.
nextItem( N, L, T) :-

    NN is N - 1,
    NN > 0,

    rowBelow(L,RR),

    myLast(RR,C),
    write("T: " + T - "\n"),
    addList(C, T, D),
write(D + " ADDED \n"),
    nextItem(NN,RR,D).



% The TreeNode and main
nextItem(L,N) :-
    NN is N ,
    myLast(L,D),
    nextItem( NN, L, D),
    write("Answer"),
    write(D).
