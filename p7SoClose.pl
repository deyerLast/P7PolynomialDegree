% David Meyer
% Project 7
% 5/30/2020

% 146	394	882	1730	3082
%     248   488     848      1352
%         240   360     504
%            120    144
%                24


%factorial(N,F) :- 
	%factorial(N1,F1), N1 is N-1, F is N*F1.


%rowBelow([RR],[]) :- rowBelow([RR],[X]). % first row is [1] for pascal

rowBelow([X],[X]) :- !. % [X] only holds 1 num, not list,       X can hold a list I guess.
rowBelow(R,RR) :- % R is regular list, 
	diffPairs(R, R1), % R1 is inner row
	
	%write(R1 * "* " ),
	%write(RR + " ++  "),

	append(R1,R,RR). %Flip R1 and R to flip the tree
	
	%write(RB - " ---- "),

	%RR = R.
	%write(RR + "---").
	



diffPairs([X],[]). % Only 1 element, no diff
diffPairs([A,B|Ns], [S|T]) :-
	%write(A),
	S is B-A, 	%diff of first two elements
	%write(S - " "),

	%write(T + "+++"),
	diffPairs([B|Ns],T). % B for diff of next two



nextItem( 0, _, []) :- !. %Can't count to -inf
nextItem( N, T, L) :-
	NN is N - 1,
	rowBelow(L,RR),

	write(T - " \n"),
	nextItem(NN,RR,RR),
	NN < 0.  

	

% The TreeNode
nextItem(L,N) :-
	%factorial(N,N1),
	%T=[X|L],
	nextItem( N, [T], L),
	write([T]).











	
	



	
	
