:- multifile person_at/2, i_am_at/1, do_talk/1, talked/1, can_interact_person/2, dead/0.

/* These rules allow you to talk to people */

talk(_) :-
    dead,
    write('You are dead.'), nl,
    !.

talk(Person) :-
    i_am_at(Location),
    can_interact_person(Person, Location),
    write('['), write(Person), write('] '),
    do_talk(Person),
    assert(talked(Person)),
    !, nl.

talk(_) :-
    write('He''s not here.'), nl,
    !.

