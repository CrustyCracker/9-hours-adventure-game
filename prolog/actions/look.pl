:- multifile i_am_at/1, at/2, person_at/2, path/2, info/1.

/* These rules set up a loop to mention all the objects in your vicinity. */

notice_objects_at(Place) :-
    at(X, Place),
    write('There is a '), write(X), write(' here.'), nl,
    fail.

notice_objects_at(_).

/* These rules set up a loop to mention all the people in your vicinity. */

notice_people_at(Place) :-
    person_at(X, Place),
    write('You notice '), write(X), write(' here.'), nl,
    fail.

notice_people_at(_).

/* These rules set up a loop to mention all possible paths */

list_paths(Place) :-
    path(X, Place),
    write('You can go to '), write(X), write(' from here.'), nl,
    fail.

list_paths(_).

/* This rule tells how to look arround you. */

look :-
    i_am_at(Place),
    write('You are at =|'), write(Place), write('|='), nl,
    info(Place),
    nl,
    write('=== Objects ==='), nl,
    notice_objects_at(Place),
    nl,
    write('=== People ==='), nl,
    notice_people_at(Place),
    nl,
    write('=== Paths ==='), nl,
    list_paths(Place),
    nl.