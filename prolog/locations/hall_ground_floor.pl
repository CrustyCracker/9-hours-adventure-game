:- multifile die/0.

% ============== Info ==============

info(hall_ground_floor) :-
  write('You look around the hall, you see a smashed beer cans everywhere.'), nl,
  write('Seems like someone had a party here. You notice someone sleeping'), nl,
  write('near the elevators.'), nl,
  !.

% ============= Objects =============

at(rm_poster, hall_ground_floor).
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

at(obs_poster, hall_ground_floor).
do_describe(obs_poster) :-
  write("It's a really big poster with some dude on it."), nl,
  write("It says that his name is Obs and he is participating in the election "), nl,
  write("to faculty student council."), nl,
  !.
do_eat(obs_poster) :-
  write("You have eaten the poster."), nl,
  write("You don't have any health issues but you are worried that "), nl,
  write("this action may lead to some consequences in the future."), nl,
  !.

% ============= People =============

% ============= Possible goto Locations =============

path(reception, hall_ground_floor).
path(hall_basement, hall_ground_floor).
path(elevator, hall_ground_floor).
