
father("Bill", "John").
father("Pam", "Bill").

parent("Bill", "John").
parent("Pam", "Bill").

grandFather(Person, GrandFather) :-
	father(Father, GrandFather), father(Person, Father).

parent(Person, Parent) :-
	mother(Person, Parent).

parent(Person, Parent) :-
	father(Person, Parent).

parent(Person, Parent) :-
	mother(Person, Parent);
	father(Person, Parent).

sibling(Person, Sibling) :-
	mother(Person, Mother), mother(Sibling, Mother).

sibling(Person, Sibling) :-
	father(Person, Father), father(Sibling, Father).

fullBloodedSibling(Person, Sibling) :-
	mother(Person, Mother),
	mother(Sibling, Mother),
	father(Person, Father),
	father(Sibling, Father).

person("Bill", "male").
person("John", "male").
person("Pam", "female").

father(Person, Father) :-
	parent(Person, Father),
	parson(Father, "male").

ancestor(Person, Ancestor) :-
	parent(Person, Ancestor).

ancestor(Person, Ancestor) :-
	parent(Person, P1),
	parent(Person, Ancestor).

ancestor(Person, Ancestor) :-
	parent(Person, P1),
	parent(P1, P2),
	parent(P2, Ancestor).