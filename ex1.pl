 shining(sun).				% 1
 married(alice,bob).			% 2
 dutch(bob).				% 3
 hasEngine(X):- car(X).			% 4
 hasEngine(X):- bike(X).		% 5
 car('Car Here').			% 4
 bike('Bike Here').			% 5
 taxPayed('Car Here').			% 6
 taxExempt('Bike Here').		% 6
 canBeDriven(X):- taxPayed(X).          % 6
 canBeDriven(X):- taxExempt(X).		% 6
