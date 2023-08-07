:- multifile dead/0, found/1.

/* These rules allow you to check your progress. */

progress :-
    dead,
    write('You are dead.'), nl,
    !.

progress :-
    write('To fulfill your quest, you will need to find:'), nl,
    write('Mat and Rad'), nl,
    write('So far you''ve found:'), nl, 
    found(mat),
    write(' - Mat'),
     nl.

progress :-
    found(rad),
    write(' - Rad'),
    nl.


progress :-
    found(mat),
    found(rad),
    write('Congratulations! You''ve found them all! Now get to work!'), nl,
    !.

