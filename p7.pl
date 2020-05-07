% David Meyer
% Project 7
% 5/30/2020

% 146    394    882    1730    3082
%     248   488     848      1352
%         240   360     504
%            120    144
%                24



rowBelow([X],[X]) :- !.         
rowBelow(R,R1) :-               % R is regular list,
    diffPairs(R, R1).               % R1 is inner row / below

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



addList(C, 0, D) :- 		 %Initial addition statement
    D is 0 + C.
addList(C, B, D) :-		
    D is C + B.



listLength([],L,L).		%So stack doesn't beome to large
listLength([_|Xs],T,L) :-
	T1 is T + 1,		%Increment length counter
	listLength(Xs,T1,L).
listLength(Xs,L) :-
	listLength(Xs,0,L).


nextItem(_, [], _, [X]) :-  !.
nextItem(A, L, T, RE) :-
    (listLength(L,A), A = 1,       %WhileLoop end if this is true
	%write(A = " :AAA   "),
        %write(T = " :TTT   "),
	%write(RE = " :RE   \n"),
	RE = T;                    %Thing to Return

    rowBelow(L,RR),

    myLast(RR,C),
    write("T: " + RR - "\n"),
    addList(C, T, D),
	%write(D + " ADDED \n"),	%Used to check addition was correct
    nextItem(A,RR,D,RE)			%Keep looking and checking
    ).




nextItem(L,N) :- %What we call
    myLast(L,D), 		%last # in original list held in D

    nextItem(C,L,D,RE), 	%C is for the counter later, L(list), D(Give original largest number), RE( returned value)
    N = RE.



