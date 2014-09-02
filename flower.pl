% Prolog predicate flower/1 that draws a flower using ASCII symbols.
%
% The parameter N scales the drawing.
%
% Author: Urmas Tamm, a21920
%

flower(X):-
	X > 0,
	upper_lower(X),
	middle(X,X),
        upper_lower(X),
	bars(X),
	!.% no backtracking, we're done here

flower(0):-write('Bad teacher! No flowers for you..').

upper_lower(X):-
	space(X),
	zero(X),
	space(X),
	nl.

middle(X,Y):-
	Y > 0,
	Y1 is Y-1,
	zero(X),
	space(X),
	zero(X),
	nl,
	middle(X,Y1).
middle(_,0).


bars(X):-
	space(X),
	bar(X),
	space(X).

space(X):-X > 0, write(' '), X1 is X-1, space(X1).
space(0).

zero(X):-X > 0, write('0'), X1 is X-1, zero(X1).
zero(0).

bar(X):-X > 0, write('|'), X1 is X-1, bar(X1).
bar(0).

