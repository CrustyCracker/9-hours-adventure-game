:- multifile die/0, talked/1.

% ============== Info ==============

info(reception) :-
  write('You look around big hallway and you see Rad standing near the reception.'), nl,
  write('But you don''t see anyone inside reception room.'), nl,
  write('You can also see door outside but because you don''t have much time '), nl,
  write('you can only go to frogshop.'), nl,
  !.

% ============= Objects =============
do_describe(invalid_five_zloty) :-
  write("It's a 5 zloty coin but it's too new for laundry paying mechanism."), nl,
  !.

% ============= People =============

person_at(rad, reception).
do_talk(rad) :-
  in_inventory(king_of_the_mountains_can); in_inventory(pearl_can),
  write("Have you just bought student's currency with my money?!"), nl,
  write("How am I supposed to do laundry now?"), nl,
  write("[bart] No worries, we'll figure it out."), nl,
  !.
do_talk(rad) :-
  in_inventory(five_zloty); in_inventory(invalid_five_zloty),
  write("Hi Bart! Have you exchanged my coin yet?"), nl,
  !.
do_talk(rad) :-
  talked(rad),
  talked(cashier),
  gave(invalid_five_zloty, cashier),
  write("Hi Bart!"), nl,
  write("[bart] Hi I was in the frogshop and the cashier told me that you can exchange your coin there"), nl,
  write("[rad] Wow that's great, but I can't go because I don't want to leave my laundry here."), nl,
  !.
do_talk(rad) :-
  talked(rad),
  talked(cashier),
  write("Hi Bart!"), nl,
  write("[bart] Hi I was in the frogshop and the cashier told me that you can exchange your coin there"), nl,
  write("[rad] Wow that's great, but I can't go because I don't want to leave my laundry here."), nl,
  write("Could you go there and exchange it for me?"), nl,
  write("*** Rad gives you invalid five zloty coin ***"), nl,
  assert(in_inventory(invalid_five_zloty)),
  !.
do_talk(rad) :-
  talked(rad),
  write("If you can help me with doing laundry then I will start doing my part of the project"), nl,
  !.
do_talk(rad) :-
  write("Hi Bart!"), nl,
  write("I know we were supposed to do the project today, but I need to do my laundry first."), nl,
  write("The problem is I have only an invalid 5 zloty coin and I wanted to exchange it "), nl,
  write("and as you can see there is no receptionist."), nl,
  write("If you can help me with doing laundry then I will start doing my part of the project"), nl,
  !.

do_give(five_zloty, rad) :-
  write("Wow, a brand new coin, I'm a little worried that might be too new for the machine"), nl,
  write("*** Rad goes and comes back in a minute***"), nl,
  write("Yup, doesn't work, too new, I'll need an older coin."), nl,
  false,
  !.

do_give(old_five_zloty, rad) :-
  write("Thanks Bart!"), nl,
  write("Now I can do my laundry"), nl,
  assert(found(rad)),
  !.


% ============= Possible goto Locations =============

path(hall_ground_floor, reception).
path(frogshop, reception).
