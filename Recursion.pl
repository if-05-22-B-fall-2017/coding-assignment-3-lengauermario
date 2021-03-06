/*Liste*/
head([Head|_], Head).
tail([_|Tail], Tail).

/*prepend add front*/
prepend([], E, [E]).
prepend([Head|Tail], E, [E |[Head|Tail]]).

/*addElement add end*/
addElement([], E, [E]).
addElement([Head|Tail], E, [Head|NewTail]):- addElement(Tail, E, NewTail).

/*hasLength*/
hasLength([], 0).
hasLength([_|Tail], Count):- hasLength(Tail, Y), Count is Y +1.

/*remove element from list*/
remove([Head|Tail], Head, Tail).
remove([Head|Tail], E, [Head|NewTail]):- remove(Tail, E, NewTail).
