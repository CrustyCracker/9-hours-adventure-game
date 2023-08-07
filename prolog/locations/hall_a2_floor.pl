:- multifile die/0, ate/1, talked/1, gave/2, path/2.

% ============== Info ==============

info(hall_a2_floor) :-
  write('When you go out of the elevator you hear some shouting STOP!. You instantly look in the way'), nl,
  write('of the sound, it appears that a group of people are playing some running game in the hall.'), nl,
  write('One of the participants has taken a break, he sits on the floor, near him is a full can of Wojownik.'), nl,
  write('Also, there is a big person with long white hair standing in front of a door near the elevators.'), nl,
  write('You reconize him, its Ad, the president of the residents'' council.'), nl.

% ============= Objects =============
at(warrior_beer, hall_a2_floor).
do_describe(warrior_beer) :-
  write('Warrior beer, a valuable item amongst local residents.'), nl,
  !.
do_eat(warrior_beer) :-
  write('You somehow manage to eat an entire can of beer.'), nl,
  write('Aluminium bits of the can cut your throat.'), nl,
  write('Surely next time you''ll know better than to eat aluminium.'), nl,
  write('You are dead!'), nl,
  die,
  !.
% ============= People =============
% Mat questline
person_at(adam, hall_a2_floor).
do_talk(adam):-
  gave(warrior_beer, adam),
  gave(signed_beer, adam),
  gave(pearl_can, adam),
  gave(king_of_the_mountains_can, adam),
  write('You paid Mats debt, I shall release him! *Adam moves out of the way*'), nl,
  assert(path(residents_cuncil_room, hall_a2_floor)),
  write('Mat is in the residents_cuncil_room, go and find him!'), nl,
  !.
do_talk(adam):-
  talked(adam),
  write('Bring me three pieces of student currency and I shall relise your friend!'), nl,
  !.
do_talk(adam) :-
  write('Hi there, How is it going? You wont''t belive what I have to tell you! This guy, Mat borrowed 3 beers form'), nl,
  write('me a week ago. He wasn''t been giveing me any signs of life since. But today I cought him playing with the croud out there!'), nl,
  write('He told me that he is broke and can''t pay back the debt. Now he is locked up in the room behind me cleaning it up.'), nl,
  write('I don''t think he is going to finish before midnight! Haha! What? You want to see Mat? Perhaps if you pay his debt, I will let him go.'), nl,
  !.
% --- debt paying logic
do_give(signed_beer, adam) :-
  write('Nice, one in a bottle, that''s a rare find around these parts! I hope you didn''t steal it!'), nl,
  !.
do_give(warrior_beer, adam) :-
  write('Mmmm wojaczek! How did you know that that''s my favorite?'), nl,
  !.
do_give(empty_beer_can, adam) :-
  write('You are joking right? Well, guess that''s free aluminium, but don''t think that I will count it as a full beer!'), nl,
  !.
do_give(king_of_the_mountains_can, adam) :-
  write('Good old KOTM, I remember when I was a kid, I used to drink it all the time!'), nl,
  !.
do_give(pearl_can, adam) :-
  write('Pearl, one of my favorites!'), nl,
  !.

person_at(sitting_person, hall_a2_floor).
do_talk(sitting_person) :-
  talked(sitting_person),
  write('Please, burp, give me a breeeeaaaak boooys!'), nl.
do_talk(sitting_person) :-
  talked(adam),
  write('I think I won''t be able tooooo play, burp, you can take my beer, burp, I wont need it anymoreeee...'), nl,
  !.
do_talk(sitting_person) :-
  write('Blaaaah, I think I burp I---I played to much. Need a brakeeeak. Feew...'), nl,
  !.


% ============= Possible goto Locations =============
% path to residents_cuncil_room opens dynamicly when you pay the debt
  path(elevator, hall_a2_floor).
