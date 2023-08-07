:- multifile i_am_at/1, in_inventory/1, at/2.

/* These rules allow you to drop an object */

drop(Object) :-
    i_am_at(Location),
    in_inventory(Object),
    assert(at(Object, Location)),
    retractall(in_inventory(Object)),
    write('Dropped: '), write(Object), nl,
    !.

drop(_) :-
    write('You don''t have this object.'), nl,
    fail.