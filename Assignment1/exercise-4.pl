 shining(sun).				% 1
 % Set a constant that "shining" is refering to sun, thus making it that when asked what's shining, 
 % we will get "sun" as result, thus making it so that the sun is shining.
 
 married(alice,bob).			% 2
 % Set a constant that "married" is refering to alice AND to bob,
 % making it so, that when asked married, we will get that alice and bob are.
 
 dutch(bob).				% 3
 % Set a constant that bob is dutch,
 % when asking prolog about "dutch", then prolog will tell us, "dutch"
 % refers to bob
 
 car(audi).			% 4
 car(vw). % 4
 % Define a constant that "audi" and "vw" are cars
 
 hasEngine(X):- car(X).			% 4
 % Define a rule that states IF X is a car then X has an engine,
 % When asking prolog what has an engine, prolog will check to see
 % if what we ask is a car and if that is true, will tell us it has an engine
 
 bike(kawasaki).			% 5
 bike(yamaha).   % 5
 % Define a constant that "kawasaki" and "yamaha" are bikes
 
 hasEngine(X):- bike(X).		% 5
 % Define a rule that states if X is a bike, then X has an engine.
 
 taxPayed(audi).			% 6
 % Define a constant that tells us "audi" has payed its taxes
 
 taxExempt(kawasaki).		% 6
 % Define a constant that means that "kawasaki" has a tax exemption
 
 canBeDriven(X):- taxPayed(X).   % 6
 % Define a rule that X can be driven if the tax has been paid.
 
 canBeDriven(X):- taxExempt(X).		% 6
 % Define a rule that X can be driven if it has a tax exemption
 
 has_license(alice, kawasaki).   % 7
 % Set a constant that alice has a license for kawasaki
 
 note(bob).   % 7
 % Set a constant that bob has a note
 
 drive(X,Y) :- has_license(X, Y), \+ note(X). % 7
 % Define a rule that X is allowed to drive Y, if X does not have a note
 % and if X have a license for Y.
 
 red(apple).   % 8
 % Define a constat that "apple" is red
 
 sweet(apple).   % 8
 % define a constant that "apple" is sweet
 
 tastes_good(X) :- red(X), sweet(X).  % 8
 % define a rule that if X is red and X is sweet,
 % then that means it tastes good.
