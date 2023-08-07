:- multifile die/0.

% ============== Info ==============

info(hall_16th_floor) :-
  write('You look around the hall, doesn''t look half bad! Looks like somone keeps this floor in order.'), nl,
  write(''), nl,
  write('near the elevators.'), nl,
  !.

% ============= Objects =============

at(rm_poster, hall_16th_floor).
do_describe(rm_poster) :-
  write("It's a poster with all members of the RM team."), nl,
  write("It has info about their names, roles and rooms they live in."), nl,
  write(""), nl,
  write("Info:"), nl,
  write("- RM room is located on a2 floor"), nl,
  write("- Ad - president of the RM - room 1005"), nl,
  write("- Luk - leader of disciplinary committee - room 1607"), nl,
  !.
do_eat(rm_poster) :-
  write("You have eaten the poster."), nl,
  write("You don't have any health issues but you are worried that "), nl,
  write("this action may lead to some consequences in the future."), nl,
  !.

% ============= People =============

% ============= Possible goto Locations =============

path(elevator, hall_16th_floor).
