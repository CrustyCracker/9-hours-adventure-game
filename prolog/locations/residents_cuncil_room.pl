:- multifile die/0, ate/1, talked/1, gave/2.

% ============== Info ==============

info(residents_cuncil_room) :-
  write('The room is like a dumpster, You notice mat swiming in the pool of garbage bags.'), nl,
  !.

% ============= Objects =============

% ============= People =============
person_at(mat, residents_cuncil_room).

do_talk(mat) :-
  write('My man, what a day right! This brute out there forced me to clean thier room.'), nl,
  write('I''m glad you came to save me, I don''t think I would''ve clean that room in a week!'), nl,
  write('What? What project? The deadline is TODAY! DAMN, I better get to it then!'), nl,
  assert(found(mat)),
  !.

% ============= Possible goto Locations =============
path(hall_a2_floor, residents_cuncil_room).
