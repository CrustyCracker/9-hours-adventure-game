:- multifile die/0.

% ============== Info ==============

info(elevator) :-
    write('Good old elevator! Even the date on the lift review sticker has a historic'), nl,
    write('date on it! Most of the buttons are covered in some sticky fluid.'), nl,
    write('The only buttons that seem touchable are displayed below. Call it lazy'), nl,
    write('developement, we call it smart story unraveling.'), nl,
    !.

% ============= Objects =============
at(cat_sticker, elevator).
do_describe(cat_sticker) :-
    write('It''s a sticker of a cat :33. It''s cute ^w^, yet it is covered in the same sticky'), nl,
    write('fluid as the buttons are on the elevator.'), nl,
    !.
do_eat(cat_sticker) :-
    write('You eat the cat sticker. It''s not very tasty, but it''s not bad either.'), nl,
    write('You feel a little fuzzy =^._.^=. Now the buttons in the elevator seem even more repelling.'), nl,
    !.

at(toilet_paper, elevator).
do_describe(toilet_paper) :-
    write('A nice roll of toilet paper, more than a half left!'), nl,
    !.

do_eat(toilet_paper) :-
    write('Why did you do this? Now you cannot finish the quest, good job!'), nl,
    write('I would recommend to restart.'), nl,
    !.

% ============= People =============

% ============= Possible goto Locations =============
path(hall_10th_floor, elevator).
path(hall_a2_floor, elevator).
path(hall_ground_floor, elevator).
path(hall_16th_floor, elevator).
