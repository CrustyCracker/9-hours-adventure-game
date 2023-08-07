:- multifile i_am_at/1, path/2, dead/0.

/* These rules allow you to move between locations */

go(_) :-
    dead,
    write('You are dead.'), nl,
    !.

go(Location) :-
    i_am_at(CurrentLocation),
    path(Location, CurrentLocation),
    retractall(i_am_at(_)),
    assert(i_am_at(Location)),
    !, nl.

go(_) :-
    write('No such path exists.'), nl.
