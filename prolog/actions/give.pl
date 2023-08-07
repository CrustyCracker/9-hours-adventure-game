:- multifile i_am_at/1, in_inventory/1, can_interact_person/2, do_give/2, gave/2, dead/0.

/* These rules allow you to give objects to people */

give(_) :-
    dead,
    write('You are dead.'), nl,
    !.
give(Object, Person) :-
    gave(Object, Person),
    write('You''ve already given it!'),
    !, nl.
give(Object, Person) :-
    i_am_at(Location),
    in_inventory(Object),
    can_interact_person(Person, Location),
    do_give(Object, Person),
    retractall(in_inventory(Object)),
    assert(gave(Object, Person)),
    !.

give(Object, Person) :-
    i_am_at(Location),
    in_inventory(Object),
    can_interact_person(Person, Location),
    write('['), write(Person), write('] I don''t want that.'), nl,
    !.

give(_, _) :-
    write('Can''t do that.'), nl,
    !.