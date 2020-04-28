# diplomacy
Known problems to fix:
1. Doesn't work with convoying an army across multiple bodies of water in one turn.
2. A hold is implicit. However, if you are supporting the hold, the hold must be explicitly inputted.

Notes:
1. If you order an army that isn't yours, order the wrong unit,
or try to make a unit go somewhere it cannot (eg: army to water region), 
it will NOT be added to *set-of-orders*.
2. However, if the move is simply geographically invalid, and not in case 1, 
it will be in *set-of-orders*. It will
not be in *geo-valid-orders*.
3. *final-move-orders* contains moves with the number of supporters added up.
This should contain moves that
are valid through convoy as well.
4. For NC-SC stuff, if a unit moves to say the NC, it is set as the 
owner of the overall unit and the NC, but the owner of the SC (if any) is removed.
