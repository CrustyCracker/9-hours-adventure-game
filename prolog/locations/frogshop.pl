:- multifile die/0, talked/1, do_pickup_fail/1.

% ============== Info ==============

info(frogshop) :-
  write('You walk into the frogshop and as expected you can see things typical '), nl,
  write('for grocery store and also a lot of student''s currency which can be a well-deserved '), nl,
  write('reward for finishing your project.'), nl,
  !.

% ============= Objects =============

do_describe(king_of_the_mountains_can) :-
  write("A can of students currency with a majestic man against the background "), nl,
  write("of the mountains."), nl,
  write("A classic among students."), nl,
  !.

do_describe(pearl_can) :-
  write("A can of students currency with a simple but stylish design."), nl,
  write("Not as popular as king of the mountains but also very recognizable."), nl,
  !.

do_describe(five_zloty) :-
  write("A regular five zloty coin."), nl,
  !.

% ============= People =============

person_at(cashier, frogshop).
do_talk(cashier) :-
  talked(rad),
  write("Hi, how can I help you?"), nl,
  write("[Bart]: Hello, how much does the students currency cost?"), nl,
  write("[cashier]: It will be 2,5 zloty for one piece!"), nl,
  write("[Bart]: Thank you very much!"), nl,
  write("*** You think about your recent conversation with Rad ***"), nl,
  write("[Bart]: Oh, and also can I exchange 5 zloty coin here?"), nl,
  write("[cashier]: Of course you can!"), nl,
  write("[Bart]: Ok, so I'll be right back. Thanks again!"), nl,
  !.
do_talk(cashier) :-
  write("Hi, how can I help you?"), nl,
  write("[Bart]: Hello, how much does the students currency cost?"), nl,
  write("[cashier]: It will be 2,5 zloty for one piece!"), nl,
  write("[Bart]: Thank you very much!"), nl,
  !.
do_give(five_zloty, cashier) :-
  write("*** You give the cashier 5 zloty coin. ***"), nl,
  write("[cashier] Thank you!"), nl,
  write("Here you go, two pieces of students currency."), nl,
  write("*** Cashier gives you two pieces of students currency ***"), nl,
  write("*** You feel kinda bad for paying with Rads money ***"), nl,
  assert(in_inventory(king_of_the_mountains_can)),
  assert(in_inventory(pearl_can)),
  !.
do_give(invalid_five_zloty, cashier) :-
  write("*** You give the cashier the invalid five zloty coin. ***"), nl,
  write("[cashier]: Here you go, another five zloty coin."), nl,
  assert(in_inventory(five_zloty)),
  !.


% ============= Possible goto Locations =============

path(reception, frogshop).
