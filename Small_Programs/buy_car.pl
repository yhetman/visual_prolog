can_buy(X, Y):-person(X),car(Y),likes(X,Y),for_sale(Y).

person(kelly).

car(lemon).
car(hot_red).

likes(kelly,hot_red).
likes(kelly,lemon).

for_sale(hot_red).
for_sale(lemon).

print_func:-can_buy(X,Y),X=kelly,write(X),write(' can buy '),write(Y),nl,fail.