% David Meyer
% Project 7
% 5/30/2020

% 146    394    882    1730    3082
%     248   488     848      1352
%         240   360     504
%            120    144
%                24



rowBelow([X],[X]) :- !.         % [X] only holds 1 num, not list,       X can hold a list I guess.
rowBelow(R,RR) :-               % R is regular list,
    diffPairs(R, R1),               % R1 is inner row

    %write(R1 * "* \n" ),
    %write(RR + " ++  "),

    append(R1,R,RR).                %Flip R1 and R to flip the tree





diffPairs([X],[]).              % Only 1 element, no diff
diffPairs([A,B|Ns], [S|T]) :-
    %write(A),
    S is B-A,                       %diff of first two elements
    %write(S - " "),

    %write(T + "+++"),
    diffPairs([B|Ns],T).            % B for diff of next two





%addEnd( [],[] ).
addEnd( [A, B |RR], C ) :-
    C is A + B,
    write(C - " : THE ADD; ").





nextItem( 0, _, []) :- !.       %Can't count to -inf
nextItem( N, T, L) :-
    NN is N - 1,
    NN > -1,
    %write(NN - "\n"),


    %write(L - "\n" ),

    rowBelow(L,RR),

    addEnd(RR,C),

    nextItem(NN,C,RR).             %THIS IS THE ISSUE!!!!!!!!!! Needs to rellop to Ln(48)



% The TreeNode and main
nextItem(L,N) :-
    nextItem( N, R, L).
    %write("\n" + R + " = DONE").
