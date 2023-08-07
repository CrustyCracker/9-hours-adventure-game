:- multifile die/0, ate/1, talked/1.

% ============== Info ==============

info(toilet) :-
  write('It''s the toilet you recognize as your own. It''s not the first'), nl,
  write('nor the last time you are here. From behind the doors you hear a'), nl,
  write('muffled, sore voice.'), nl.

% ============= Objects =============

% Paper roll
at(paper_roll, toilet).
do_describe(paper_roll) :-
  write('Toilet paper, usually used to clean yourself'), nl,
  !.
do_eat(paper_roll) :-
  write('Tasty paper! Good job, you feel fulfilled. Also slightly nauseous.'), nl,
  !.

% ============= People =============

% Voice from toilet
person_at(voice_from_toilet, toilet).
do_talk(voice_from_toilet) :-
  ate(toilet_paper),
  write('Did I just hear you eating paper out there?'), nl,
  write('Bart are you feeling alright? Please, leave me alone.'), nl,
  !.
do_talk(voice_from_toilet) :-
  talked(voice_from_toilet),
  write('Toilet paper, PLEASE!'), nl,
  !.
do_talk(voice_from_toilet) :-
  write('Bart, thank god you are here, I need toilet paper NOW!'), nl,
  write('Please bring me a roll and I will reward you kindly.'), nl,
  !.
do_give(flyer, voice_from_toilet) :-
  write('Oh, that. Yea yesterday''s party was a blast.'), nl,
  write('I am glad that at least you''re safe. Haven''t heard from neither Rad'), nl,
  write('or Mat since yesterday, hope they''re safe.'), nl,
  !.
do_give(toilet_paper, voice_from_toilet) :-
  write('Oh, thank you so much!'), nl,
  write('Here, take this coin, you can do whatever with it.'), nl,
  assert(in_inventory(old_five_zloty)),
  !.

% ============= Possible goto Locations =============

path(your_room, toilet).