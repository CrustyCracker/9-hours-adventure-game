:- multifile in_inventory/1.

/* This rule tells how to go through items in your inventory. */

go_through_inventory :-
    in_inventory(X),
    write('> '), write(X), nl,
    fail.

go_through_inventory.

inventory :-
    write('=== Inventory ==='), nl,
    go_through_inventory, nl.
