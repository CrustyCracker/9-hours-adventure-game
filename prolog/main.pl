/**  =================================================================
 *  |                        "9 hours"                               |
 *  | by Mateusz Krakowski, Bartosz Latosek and Radosław Kostrzewski |
 *   ================================================================= */
% ============== Setup Commands ==============

% multifile directive is used to declare that a predicate may have multiple clauses that are defined in different source files.

% dynamic directive is used to declare that a predicate can be modified dynamically at runtime using the assert/1 and retract/1 built-in predicates. 
:- dynamic
    i_am_at/1,
    at/2,
    ate/1,
    gave/2,
    dead/0,
    in_inventory/1,
    talked/1,
    path/2,
    found/1.

% retract is a built-in meta-predicate used to remove facts or rules from the Prolog database while a program is executing
:- 
    retractall(i_am_at(_)),
    retractall(at(_, _)),
    retractall(ate(_)),
    retractall(gave(_, _)),
    retractall(talked(_)),
    retractall(progress),
    retractall(dead).

:-
    ensure_loaded(actions/describe),
    ensure_loaded(actions/drop),
    ensure_loaded(actions/eat),
    ensure_loaded(actions/give),
    ensure_loaded(actions/go),
    ensure_loaded(actions/inventory),
    ensure_loaded(actions/look),
    ensure_loaded(actions/pickup),
    ensure_loaded(actions/talk),
    ensure_loaded(actions/progress),

    ensure_loaded(locations/your_room),
    ensure_loaded(locations/toilet),
    ensure_loaded(locations/hall_10th_floor),
    ensure_loaded(locations/hall_a2_floor),
    ensure_loaded(locations/residents_cuncil_room),
    ensure_loaded(locations/hall_ground_floor),
    ensure_loaded(locations/hall_basement),
    ensure_loaded(locations/elevator),
    ensure_loaded(locations/laundry_room),
    ensure_loaded(locations/frogshop),
    ensure_loaded(locations/reception).


/* This checks if you can interact with an object and person*/

can_interact_object(Object, Location) :-
    at(Object, Location) ; in_inventory(Object).

can_interact_person(Person, Location) :-
    person_at(Person, Location).

% ============== Game rules ==============

/* This rule just writes out game instructions. */

instructions :-
    nl,
    write('Enter commands using standard Prolog syntax.'), nl,
    write('Available commands are:'), nl,
    write('instructions.          -- to see this message again.'), nl,
    write('start.                 -- to start the game.'), nl,
    write('look.                  -- to look around you.'), nl,
    write('inventory.             -- to look through your inventory.'), nl,
    write('halt.                  -- to end the game and quit.'), nl,
    write('progress.              -- to show progress of your mission'), nl,
    write('describe(Object).      -- to get some info about an object'), nl,
    write('eat(Object).           -- to eat an object'), nl,
    write('pickup(Object).        -- to pick an object into inventory'), nl,
    write('drop(Object).          -- to remove an object from inventory'), nl,
    write('talk(Person).          -- to talk to Person'), nl,
    write('give(Object, Person).  -- to give Objects to People'), nl,
    write('go(Location).          -- to switch locations (if path exists)'), nl,
    nl.

/* This starts the game */

start :-
    write('The world suddenly stops spinning. You swiftly grab your aching head and'), nl,
    write('put yourself up from the mess you''re already used to calling your bed.'), nl,
    write('You look up on the wall, where you notice a single sticky note. You take'), nl,
    write('a closer look. It strikes you. Your PARP project is due today. You say'), nl,
    write('your prayers as you glance at your watch. It is exactly 15:00 pm.'), nl,
    write('Around you are two empty bed where your roommates sleep.'), nl,
    write('Shame that they are not here. Guess you will need to find them!'), nl,
    write('-------------------------| You have 9 hours. | -------------------------'), nl.

/* This kills the player */

die :-
    assert(dead),
    finish.

/* This ends the game */

finish :-
    nl,
    write('The game is over. Please enter the "halt." command.'),
    nl.

/* Starting location */
i_am_at(your_room).


