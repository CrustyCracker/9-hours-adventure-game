:- multifile die/0, talked/1.

% ============== Info ==============

info(laundry_room) :-
  write('You look around and you see four laundry machines and one laundry dryer.'), nl,
  write('There is also a person that''s standing in the corner of the room.'), nl,
  !.

% ============= Objects =============

at(toms_tide_pods, laundry_room).
do_describe(toms_tide_pods) :-
  write('You see a small box of Tide Pods which Tom is using for laundry.'), nl,
  write('You know that you are not supposed to eat them but they look like something delicious'), nl,
  !.
do_eat(toms_tide_pods) :-
  maybe(0.5),
  write('You eat the Tide Pods and as it turned out they don''t taste as good as they look.'), nl,
  write('You feel sick and you start to vomit.'), nl,
  !.

do_eat(toms_tide_pods) :-
  write('You eat the Tide Pods and as it turned out they don''t taste as good as they look.'), nl,
  write('You feel sick and you start to vomit.'), nl,
  write('It turns out that you are allergic to Tide Pods.'), nl,
  write('You die.'), nl,
  die,
  !.

% ============= People =============

person_at(tom, laundry_room).
do_talk(tom) :-
  ate(toms_tide_pods),
  write("I'm glad you liked my Tide Pods!"), nl,
  write("Although I'm not sure if you should eat them."), nl,
  !.

do_talk(tom) :-
  talked(tom),
  write('Yeah the washing machine has eaten first of his 5 zloty coins '), nl,
  write('and the second one is too new for this outdated paying mechanism.'), nl,
  write('He is propably in the reception to exchange his defective coin.'), nl,
  !.

do_talk(tom) :-
  write('Hello there!'), nl,
  write('I''m waiting for my laundry to finish washing.'), nl,
  write('I guess I was lucky this time unlike my roommate.'), nl,
  !.


% ============= Possible goto Locations =============

path(hall_basement, laundry_room).
