:- multifile die/0.

% ============== Info ==============

info(hall_basement) :-
  write('You look around and you see entrance to the laundry room.'), nl,
  write('You can also see rat poison in the corners of the hallway'), nl,
  !.

% ============= Objects =============
at(rat_poison, hall_basement).
do_describe(rat_poison) :-
  write('Little red pellets which are used for deratization.'), nl,
  !.
do_eat(rat_poison) :-
  write('You''ve eaten all the rat poison you could see in the hallway.'), nl,
  write('You feel sick you die a moment later.'), nl,
  write('Did you really think that it could end in any other way?'), nl,
  die,
  !.

% ============= People =============

% ============= Possible goto Locations =============

path(hall_ground_floor, hall_basement).
path(laundry_room, hall_basement).
