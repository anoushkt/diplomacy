;; To report problems and to get help with issues,  please visit

;;   https://github.com/portacle/portacle/issues
;; Portacle is currently running SLIME , but you can
;;   Switch to SLY
;; You should also configure Portacle with the
;;   First-time setup
;;
;; You can use this buffer for notes and tinkering with code.
;;; -*- Mode:Lisp -*-
;;;Authors: Anoushka Tiwari
(in-namespace "diplomacy")
(new-context {diplomacy-type-games}
             {games})
(in-context {diplomacy-type-games})

;;;A {region} is any space on the board that can be occupied by a piece.
(new-type {region}
          {thing})
;;; There are three major types of regions.

(new-complete-split-subtypes {region}
                             '({land-region}
                               {water-region}
                               {coastal-region}
                    (in-namespace "diplomacy")
(new-context {diplomacy-type-games}
             {games})
(in-context {diplomacy-type-games})

;;;A {region} is any space on the board that can be occupied by a piece.
(new-type {region}
          {thing})
;;; There are three major types of regions.

(new-complete-split-subtypes {region}
                             '({land-region}
                               {water-region}
                               {coastal-region}
                               ))
           ))
;;;A unit can be an army or a fleet
(new-type {unit} {thing})
(new-complete-split-subtypes {unit} '({army} {fleet})
;;; An army can go to a land or a coastal region.
;;; A fleet can go to a coastal or a water region.
(new-split-subtypes {legal units} '({armies only} {fleets only} {armies and fleets}))
(new-is-a {land-region} {armies only})
(new-is-a {water-region} {fleets only})
(new-is-a {coastal-region} {armies and fleets})



;;; The following are features of the standard version of Diplomacy.

;;; There are 7 countries in the game.
;;; Each country is an 'individual' of the {great power} type.
(new-type {great power} {thing})
(new-indv {Austria} {great power})
(new-indv {England} {great power})
(new-indv {France} {great power})
(new-indv {Germany} {great power})
(new-indv {Italy} {great power})
(new-indv {Russia} {great power})
(new-indv {Turkey} {great power})

;;; A list of all playing countries is maintained for ease of iteration.
(defvar *countries* '(list {Austria} {England}
                      {France} {Germany}
                      {Italy} {Russia} {Turkey}))
;;; Each country is assigned a colored playing piece.
;;; Piece colors derive from a standard {color} type.
(new-type {color} {thing})
(new-split-subtypes {color} '({red} {dark blue} {light blue}
                              {black} {green} {white} {yellow}))

(new-indv-role {piece color} {great power} {color})

;;; Each {great power} is assigned a {piece color}.

(x-is-the-y-of-z {red} {piece color} {Austria})
(x-is-the-y-of-z {dark blue} {piece color} {England})
(x-is-the-y-of-z {light blue} {piece color} {France})
(x-is-the-y-of-z {black} {piece color} {Germany})
(x-is-the-y-of-z {green} {piece color} {Italy})
(x-is-the-y-of-z {white} {piece color} {Russia})
(x-is-the-y-of- {yellow} {piece color} {Turkey})

;;; The {supply center} type is defined.
(new-type {supply center} {thing})

;;; A supply center is a city that may or may not be a home base.
;;; Cities up till Belgium are not home bases.

(new-complete-split-subtypes
 {supply center}
 '({Rumania} {Bulgaria} {Serbia}
   {Denmark} {Sweden} {Norway}
   {Portugal} {Spain} {Tunis}
   {Holland} {Belgium} {Berlin}
   {Kiel} {Munich} {Ankara}
   {Constantinople} {Smyrna}
   {Edinburgh} {Liverpool}
   {London} {Budapest}
   {Trieste} {Vienna}
   {Moscow} {Saint Petersburgh}
   {Sevastopol} {Warsaw}
   {Naples} {Rome}
   {Venice} {Brest} 
   {Marseilles} {Paris}))

;;; A supply center may or may not be a home base.
;;; If X is a supply center of Y, we create a {home-base-of} relationship
;;; between X and Y.

(new-relation {home-base-of} {supply center} {great power})
(new-statement {Berlin} {home-base-of} {Germany})
(new-statement {Kiel}  {home-base-of} {Germany})
(new-statement {Munich} {home-base-of} {Germany})
(new-statement {Ankara} {home-base-of} {Turkey})
(new-statement {Constantinople} {home-base-of} {Turkey})
(new-statement {Smyrna} {home-base-of} {Turkey})
(new-statement {Edinburgh} {home-base-of} {England})
(new-statement {Liverpool} {home-base-of} {England})
(new-statement {London} {home-base-of} {England})
(new-statement {Budapest} {home-base-of} {Austria})
(new-statement {Trieste} {home-base-of} {Austria})
(new-statement {Vienna} {home-base-of} {Austria})
(new-statement {Moscow} {home-base-of} {Russia})
(new-statement {Saint Petersburgh} {home-base-of} {Russia})
(new-statement {Sevastopol} {home-base-of} {Russia})
(new-statement {Warsaw} {home-base-of} {Russia})
(new-statement {Naples} {home-base-of} {Italy})
(new-statement {Rome} {home-base-of} {Italy})
(new-statement {Venice} {home-base-of} {Italy})
(new-statement {Brest} {home-base-of} {France})
(new-statement {Marseilles} {home-base-of} {France})
(new-statement {Paris} {home-base-of} {France})

;;; Land regions that are also supply centers have armies.
;;; Water regions have fleets.
(new-is-a {Vienna} {land-region})
(new-is-a {Budapest} {land-region})
(new-is-a {Trieste} {water-region})
(new-is-a {London} {water-region})
(new-is-a {Edinburgh} {water-region})
(new-is-a {Liverpool} {land-region})
(new-is-a {Paris} {land-region})
(new-is-a {Marseilles} {land-region})
(new-is-a {Brest} {water-region})
(new-is-a {Berlin} {land-region})
(new-is-a {Munich} {land-region})
(new-is-a {Kiel} {water-region})
(new-is-a {Rome} {land-region})
(new-is-a {Venice} {land-region})
(new-is-a {Naples} {water-region})
(new-is-a {Moscow} {land-region})
(new-is-a {Sevastopol} {water-region})
(new-is-a {Ankara} {water-region})
(new-is-a {Constantinople} {land-region})
(new-is-a {Smyrna} {land-region})
(new-is-a {supply center} {unit city})

;;; All regions have an associated variable that contains information about the situation there.
(defparameter *Syria* (list))
(defparameter *Armenia* (list))
(defparameter *Smyrna* (list))
(defparameter *Ankara* (list))
(defparameter *Constantinople* (list))
(defparameter *Sevastopol* (list))
(defparameter *Ukraine* (list))
(defparameter *Warsaw* (list))
(defparameter *Moscow* (list))
(defparameter *Livonia* (list))
(defparameter *St-Petersburg* (list))
(defparameter *Naples* (list))
(defparameter *Apulia* (list))
(defparameter *Rome* (list))
(defparameter *Tuscany* (list))
(defparameter *Venice* (list))
(defparameter *Piedmont* (list) )
(defparameter *Munich* (list))
(defparameter *Silesia* (list))
(defparameter *Prussia* (list))
(defparameter *Berlin* (list))
(defparameter *Ruhr* (list))
(defparameter *Kiel* (list))
(defparameter *Marseilles* (list))
(defparameter *Gascony* (list))
(defparameter *Burgundy* (list))
(defparameter *Paris* (list))
(defparameter *Brest* (list))
(defparameter *Picardy* (list))
(defparameter *London* (list))
(defparameter *Yorkshire* (list))
(defparameter *Liverpool* (list))
(defparameter *Edinburgh* (list))
(defparameter *Clyde* (list))
(defparameter *Wales* (list))
(defparameter *Budapest* (list))
(defparameter *Galicia* (list))
(defparameter *Trieste* (list))
(defparameter *Vienna* (list))
(defparameter *Bohemia* (list))
(defparameter *Tyrolia* (list))
(defparameter *Greece* (list))
(defparameter *Bulgaria* (list))
(defparameter *Serbia* (list))
(defparameter *Albania* (list))
(defparameter *Rumania* (list))
(defparameter *Finland* (list))
(defparameter *Sweden* (list))
(defparameter *Denmark* (list))
(defparameter *Holland*(list))
(defparameter *Belgium* (list))
(defparameter *Spain* (list))
(defparameter *Portugal* (list))
(defparameter *North-Africa* (list))
(defparameter *Tunis* (list))
(defparameter *Barents-Sea* (list))
(defparameter *Norwegian-Sea* (list))
(defparameter *Gulf-of-Bothnia* (list))
(defparameter *Baltic-Sea* (list))
(defparameter *Skagerrak* (list))
(defparameter *North-Sea* (list))
(defparameter *Helgoland-Bight* (list))
(defparameter *English-Channel* (list))
(defparameter *North-Atlantic-Ocean* (list))
(defparameter *Irish-Sea* (list))
(defparameter *Mid-Atlantic-Ocean* (list))
(defparameter *Western-Mediterranean*(list))
(defparameter *Gulf-of-Lyon*(list))
(defparameter *Tyrrhenian-Sea* (list))
(defparameter *Ionian-Sea* (list))
(defparameter *Adriatic-Sea* (list))
(defparameter *Eastern-Mediterranean* (list))
(defparameter *Black-Sea* (list))
(defparameter *Aegean-Sea* (list))



;;; Any diplomacy region is a unit 'city'.
(new-is-a {unit city} {thing})
(new-type-role {owner} {unit city} {great power})
(new-is-a {supply center} {unit city})


;;; Now we implement the geographical structure
;;; of the map.

(defparameter *g-Syria* (list {Armenia} {Smyrna}))
(defparameter *g-Armenia* (list {Ankara} {Smyrna} {Syria} {Sevastopol} 
                           {Black-Sea}))
(defparameter *g-Smyrna* (list {Ankara} {Constantinople}
                         {Armenia} {Aegean-Sea}))
(defparameter *g-Ankara* (list {Constantinople} {Smyrna}
                         {Armenia} {Black-Sea}))
(defparameter *g-Constantinople* (list {Bulgaria} {Ankara}
                                 {Smyrna} {Aegean-Sea} {Black-Sea}))
(defparameter *g-Sevastopol* (list {Black-sea} 
                             {Moscow} {Rumania}))
(defparameter *g-Ukraine* (list {Galicia} 
                          {Moscow} {Warsaw} {Sevastopol} {Rumania}))
(defparameter *g-Warsaw* (list {Galicia} {Moscow} {Prussia}
                          {Silesia} {Ukraine} {Livonia}))
(defparameter *g-Moscow* (list  {Livonia} {Ukraine} {Warsaw} {Sevastopol}
                          {St-Petersburg}))
(defparameter *g-Livonia* (list {Moscow} {Warsaw} {Baltic-Sea} 
                          {St-Petersburg} {Prussia} ))
(defparameter *g-St-Petersburg* (list {Gulf-of-Bothnia}
                                {Moscow} {Livonia}))
(defparameter *g-Naples* (list {Apulia} {Rome} {Tyrrhenian-Sea}))
(defparameter *g-Apulia* (list {Rome} {Naples} {Adriatic-Sea}))
(defparameter *g-Rome* (list {Apulia} {Naples} {Tuscany} {Tyrrhenian-Sea}))
(defparameter *g-Tuscany* (list {Rome} {Tyrrhenian-Sea} {Gulf-of-Lyon}
                           {Venice} {Piedmont}))
(defparameter *g-Venice* (list {Adriatic-Sea} {Piedmont} {Tyrolia} {Trieste} ))
(defparameter *g-Piedmont* (list {Marseilles} {Venice} {Gulf-of-Lyon} {Tuscany} {Tyrolia}) )
(defparameter *g-Munich* (list {Burgundy} {Bohemia} {Tyrolia} {Ruhr}
                           {Kiel} {Silesia} {Berlin}))
(defparameter *g-Silesia* (list {Prussia} {Warsaw} {Berlin} {Munich} {Bohemia}))
(defparameter *g-Prussia* (list {Silesia} {Warsaw} {Baltic-Sea} {Berlin} {Livonia}))
(defparameter *g-Berlin* (list {Kiel} {Baltic-Sea} {Prussia} {Silesia} {Munich}))
(defparameter *g-Ruhr* (list {Kiel} {Munich} {Belgium} {Holland} {Burgundy}))
(defparameter *g-Kiel* (list {Berlin} {Silesia} {Ruhr} {Denmark} 
{Munich} {Holland} {Baltic-Sea}))
(defparameter *g-Marseilles* (list {Piedmont} {Burgundy} {Gascony} {Gulf-of-Lyon}
                                    {Spain}))
(defparameter *g-Gascony* (list {Spain} {Marseilles} {Burgundy} {Paris} {Brest}
                           {Mid-Atlantic-Ocean}))
(defparameter *g-Burgundy* (list {Paris} {Marseilles}
                                {Gascony} {Munich} {Picardy} {Ruhr} {Piedmont} {Belgium} ))
(defparameter *g-Paris* (list {Picardy} {Burgundy} {Gascony} {Brest}))
(defparameter *g-Brest* (list {Gascony} {Paris} {Picardy} {English-Channel}))
(defparameter *g-Picardy* (list {Paris} {Belgium} {Burgundy} {Brest} {English-Channel}))
(defparameter *g-London* (list {Wales} {Yorkshire} {Liverpool} {English-Channel} ))
(defparameter *g-Yorkshire* (list {London} {Liverpool} {North-Sea} {Wales} {Edinburgh}))
(defparameter *g-Liverpool* (list {Yorkshire} {Wales} {London} {Irish-Sea} {Edinburgh}))
(defparameter *g-Wales* (list {Yorkshire} {London} {Liverpool} {Irish-Sea} {English-Channel}))
(defparameter *g-Edinburgh* (list {Yorkshire} {Liverpool}
                     {Norwegian-Sea} {North-Sea} {North-Atlantic-Ocean}))
(defparameter *g-Clyde* (list))
(defparameter *g-Budapest* (list {Vienna} {Galicia} {Trieste} 
                           {Serbia} {Rumania}))
(defparameter *g-Galicia* (list {Warsaw} {Ukraine} {Silesia} {Bohemia} {Vienna} {Budapest}))
(defparameter *g-Trieste* (list {Budapest} {Vienna} {Tyrolia} {Adriatic Sea} {Venice}))
(defparameter *g-Vienna* (list {Budapest} {Bohemia} {Galicia} {Tyrolia} {Trieste}))
(defparameter *g-Bohemia* (list {Munich} {Silesia} {Galicia} {Vienna} {Tyrolia}))
(defparameter *g-Tyrolia* (list {Vienna} {Bohemia} {Munich} {Piedmont} {Venice} {Trieste}))
(defparameter *g-Greece* (list {Albania} {Serbia} {Bulgaria} {Aegean-Sea} ))
(defparameter *g-Bulgaria* (list {Black-Sea} {Rumania} {Serbia} {Greece} {Aegean-Sea}
                                 {Constantinople}))
(defparameter *g-Serbia* (list {Budapest} {Trieste} {Albania} {Greece} {Bulgraria} {Rumania}))
(defparameter *g-Albania* (list {Serbia} {Adriatic-Sea} {Trieste} {Greece} ))
(defparameter *g-Rumania* (list {Ukraine} {Galicia} {Budapest} {Serbia} {Bulgaria} {Black-Sea}))
(defparameter *g-Finland* (list {Gulf-of-Bothnia} {St-Petersburg} ))

;;;Norway??????

(defparameter *g-Sweden* (list {Gulf-of-Bothnia} {Baltic-Sea}))
(defparameter *g-Denmark* (list {North-Sea} {Baltic-Sea}))
(defparameter *g-Holland*(list {Kiel} {Belgium} {Ruhr} {North-Sea}))
(defparameter *g-Belgium* (list {Holland} {English-Channel} {Ruhr} {Picardy} {London}))
(defparameter *g-Spain* (list {Gulf-of-Lyon} {Mid-Atlantic-Ocean} {Gascony} {Marseilles}
                          {Portugal}))
(defparameter *g-Portugal* (list {Spain} {Mid-Atlantic-Ocean}))
(defparameter *g-North-Africa* (list {Tyrrhenian-Sea} {Spain} {Western-Mediterranean}))
(defparameter *g-Tunis* (list))

(defparameter *g-Barents-Sea* (list))
(defparameter *g-Norwegian-Sea* (list))
(defparameter *g-Gulf-of-Bothnia* (list))
(defparameter *g-Baltic-Sea* (list))
(defparameter *g-Skagerrak* (list))
(defparameter *g-North-Sea* (list))
(defparameter *g-Helgoland-Bight* (list))
(defparameter *g-English-Channel* (list))
(defparameter *g-North-Atlantic-Ocean* (list))
(defparameter *g-Irish-Sea* (list))
(defparameter *g-Mid-Atlantic-Ocean* (list))
(defparameter *g-Western-Mediterranean*(list))
(defparameter *g-Gulf-of-Lyon*(list))
(defparameter *g-Tyrrhenian-Sea* (list))
(defparameter *g-Ionian-Sea* (list))
(defparameter *g-Adriatic-Sea* (list))
(defparameter *g-Eastern-Mediterranean* (list))
(defparameter *g-Black-Sea* (list))
(defparameter *g-Aegean-Sea* (list))






;;; Now we come to implementing moves.
(new-type {order} {thing})

(new-complete-split-subtypes {order}'({hold}
                                      {support}
                                      {move}
                                      {convoy}))
;;; Carrying out an order requires certain information depending on
;;; the type of order we are dealing with.

;;; For the {hold} move, we must know which city the hold is being ordered
;;; for, who is the {great power} ordering it, and the number of supporters
;;; and opposers for the {hold} order.

(new-indv-role {location} {hold} {unit city})
(new-indv-role {holding power} {hold} {great power})

;;; A {convoy} order has properties such as which unit is performing the convoy,
;;; and which army unit is being convoyed.
;;; We also keep track of the 2 {great power} that are involved.
;;;all properties defined as roles of convoy
(new-indv-role {transporting country} {convoy} {great power})
(new-indv-role {country being transported} {convoy} {great power})
(new-indv-role {initial position} {convoy} {unit city})
(new-indv-role {final position} {convoy} {unit city})

;;; These are the properties of the {support} order.
;;; {where} contains information about which unit city the support is being extended to.

(new-indv-role {where} {support} {unit city})
(new-indv-role {country supported} {support} {great power})
;;; Information of which unit is providing the support and which {great power}
;;; it belongs to.

(new-indv-role {supporting unit} {support} {unit city})
(new-indv-role {supporting country} {support} {great power})

;;; These are the properties of the {move} order.
(new-indv-role {initial} {move} {unit city})
(new-indv-role {final} {move} {unit city})
(new-indv-role {country} {move} {great power})












