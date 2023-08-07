:- multifile i_am_at/1, at/2, in_inventory/1.

/* These rules allow you to pick up an object */

pickup(_) :-
    dead,
    write('You are dead.'), nl,
    !.


pickup(Object) :-
    i_am_at(Location),
    at(Object, Location),
    assert(in_inventory(Object)),
    retractall(at(Object, Location)),
    write('Picked up: '), write(Object), nl,
    !.

pickup(_) :-
    write('No such object here.'), nl,
    fail.
