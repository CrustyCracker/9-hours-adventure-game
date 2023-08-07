:- multifile die/0.

% ============== Info ==============

info(your_room) :-
  write('The stench of the room makes your eyeballs itch. You somehow manage to'), nl,
  write('look around. There''s no one here. You are surrounded by empty bottles, '), nl,
  write('bits of confetti and dirty clothes. The fridge is half open, there isn''t much'), nl,
  write('in there, just a bottle of beer with caption DO NOT STEAL written on it with a white marker'), nl,
  !.

% ============= Objects =============

% Rads laptop
at(rads_laptop, your_room).
do_describe(rads_laptop) :-
  write('Rad''s laptop has always been covered in corny programmer stickers.'), nl,
  write('You open it up and see it''s locked. Coffee stains cover the keycaps.'), nl,
  !.
do_eat(rads_laptop) :-
  write('You chop off the corner of Rad''s laptop and break some teeth in the'), nl,
  write('process. You choke on swallowed parts of it''s case and electronics'), nl, 
  write('and die from suffocation.'), nl,
  die,
  !.

% Empty bottle
at(empty_bottle, your_room).
do_describe(empty_bottle) :-
  write('It''s just an empty bottle.'), nl,
  !.
do_eat(empty_bottle) :-
  maybe(0.9),
  write('You take a bite of the bottle and the shards of glass'), nl,
  write('cut your throat from the inside. You die.'), nl,
  die,
  !.
do_eat(empty_bottle) :-
  write('You somehow manage to eat the whole bottle and you''re still alive!'), nl,
  write('I really don''t know how you managed to do something like this.'), nl,
  !.

% Flyer
at(flyer, your_room).
do_describe(flyer) :-
  write('It''s an invitation to a party with yesterday\s date.'), nl,
  !.
do_eat(flyer) :-
  maybe(0.8),
  write('You slowly swallow the flyer bit by bit. It does not taste good.'), nl,
  write('In fact it does not taste like anything. Your stomach hurts a little.'), nl,
  !.
do_eat(flyer) :-
  write('You tried to swallow whole flyer at once.'), nl,
  write('Unfortunatelly it was to big for your throat and you suffocated.'), nl,
  die,
  !.

at(signed_beer, your_room).
do_describe(signed_beer) :-
  write('Green bottle with delitious liqued filled in it to the neck! Someone signed it'), nl,
  write('with caption DO NOT STEAL. You don''t remember much, who knows, it might have benn you who signed it!'), nl,
  !.
at(white_marker, your_room).
do_describe(white_marker) :-
  write('A white marker, a rare thing, good for signing green bottles!'), nl,
  !.
do_eat(white_marker):-
  write('You swollow the marker whole, doesn''t seem that bad!'), nl,
  !.
% ============= People =============

% ============= Possible goto Locations =============

path(toilet, your_room).
path(hall_10th_floor, your_room).
