:- multifile dead/0, i_am_at/1, can_interact_object/2, do_describe/1.

/* These rules allow you to describe an Object. */

describe(_) :-
    dead,
    write('You are dead.'), nl,
    !.

describe(Object) :-
    i_am_at(Location),
    can_interact_object(Object, Location),
    do_describe(Object),
    !, nl.

describe(_) :-
    write('No such object here.'), nl,
    !.