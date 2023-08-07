:- multifile at/2, in_inventory/1, ate/1, i_am_at/1, do_eat/1, can_interact_object/2, dead/0.

/* These rules allow you to eat the object of your choice */

eat(_) :-
    dead,
    write('You are dead.'), nl,
    !.

eat(Object) :-
    ate(Object),    
    write('You''ve already ate it!'),
    !, nl.

eat(Object) :-
    i_am_at(Location),
    can_interact_object(Object, Location),
    do_eat(Object),
    retractall(at(Object, _)),
    retractall(in_inventory(Object)),
    assert(ate(Object)),
    !, nl.

eat(_) :-
    write('No such object here.'), nl,
    !.
