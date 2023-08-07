:- multifile die/0, talked/1.

% ============== Info ==============

info(hall_10th_floor) :-
  write('You look around the hall, you see a smashed beer cans everywhere.'), nl,
  write('Seems like someone had a party here. You notice someone sleeping'), nl,
  write('near the elevators.'), nl,
  !.

% ============= Objects =============

% Empty beer can
at(empty_beer_can, hall_10th_floor).
do_describe(empty_beer_can) :-
  write('just an empty beer can.'), nl,
  !.
do_eat(empty_beer_can) :-
  write('You somehow manage to eat an entire can of beer.'), nl,
  write('Aluminium bits of the can cut your throat.'), nl,
  write('Surely next time you''ll know better than to eat aluminium.'), nl,
  write('You are dead!'), nl,
  die,
  !.

% ============= People =============

% Sleeping individual
person_at(sleeping_individual, hall_10th_floor).
do_talk(sleeping_individual) :-
  talked(sleeping_individual),
  write('Z Z Z (snort, louder)'), nl,
  !.
do_talk(sleeping_individual) :-
  write('z z z... (snort)'), nl,
  !.

% ============= Possible goto Locations =============

path(your_room, hall_10th_floor).
path(elevator, hall_10th_floor).
