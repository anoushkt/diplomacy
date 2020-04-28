;;; -*- Mode:Lisp -*-
;;; Authors: Anoushka Tiwari
;;; All spaces on the map are of the {diplomacy region} type.
(new-type {diplomacy region} {thing})
(new-complete-split-subtypes {diplomacy region}
                             '({land region}
                               {water region}
                               {coastal region}))
;;; A diplomacy region could allow armies, fleets, or both. This
;;; depends on whether it is a land, water or coastal region.
(new-type {army legal region}{diplomacy region} )
(new-type {fleet legal region}{diplomacy region})
(new-is-a {land region} {army legal region})
(new-is-a {water region} {fleet legal region})
(new-is-a {coastal region} {army legal region})
(new-is-a {coastal region} {fleet legal region})

;;; The type of unit that occupies a region.
(new-type {unit} {thing})
(new-indv {army} {unit})
(new-indv {fleet} {unit})

;;; Every valid region on the map is either a land, water
;;; or coastal region.
(new-indv {SYR} {land region})
(new-indv {ARM} {coastal region})
(new-indv {SMY} {coastal region})
(new-indv {ANK} {coastal region})
(new-indv {CON} {coastal region})
(new-indv {SEV} {coastal region})
(new-indv {UKR} {land region})
(new-indv {WAR} {land region})
(new-indv {MOS} {land region})
(new-indv {LVN} {coastal region})
(new-indv {STP} {coastal region})
(new-indv {NAP} {coastal region})
(new-indv {APU} {coastal region})
(new-indv {ROM} {coastal region})
(new-indv {TUS} {coastal region})
(new-indv {VEN} {coastal region})
(new-indv {PIE} {coastal region})
(new-indv {MUN} {land region})
(new-indv {SIL} {land region})
(new-indv {PRU} {coastal region})
(new-indv {BER} {coastal region})
(new-indv {RUH} {land region})
(new-indv {KIE} {coastal region})
(new-indv {MAR} {coastal region})
(new-indv {GAS} {coastal region})
(new-indv {ALB} {coastal region})
(new-indv {FIN} {coastal region})
(new-indv {BUR} {land region})
(new-indv {PAR} {land region})
(new-indv {BRE} {coastal region})
(new-indv {PIC} {coastal region})
(new-indv {LON} {coastal region})
(new-indv {YOR} {coastal region})
(new-indv {LVP} {coastal region})
(new-indv {WAL} {coastal region})
(new-indv {EDI} {coastal region})
(new-indv {BUD} {land region})
(new-indv {GAL} {land region})
(new-indv {TRI} {coastal region})
(new-indv {VIE} {land region})
(new-indv {BOH} {land region})
(new-indv {TYR} {land region})
(new-indv {GRE} {coastal region})
(new-indv {BUL} {coastal region})
(new-indv {SWE} {coastal region})
(new-indv {DEN} {coastal region})
(new-indv {HOL} {coastal region})
(new-indv {BEL} {coastal region})
(new-indv {TUN} {coastal region})
(new-indv {NAF} {coastal region})
(new-indv {SPA} {coastal region})
(new-indv {POR} {coastal region})
(new-indv {NRA} {coastal region})
(new-indv {BAR} {water region})
(new-indv {SER} {land region})
(new-indv {NRG} {water region})
(new-indv {BOT} {water region})
(new-indv {BAL} {water region})
(new-indv {SKA} {water region})
(new-indv {NTH} {water region})
(new-indv {HEL} {water region})
(new-indv {ENG} {water region})
(new-indv {NAT} {water region})
(new-indv {IRI} {water region})
(new-indv {MID} {water region})
(new-indv {WES} {water region})
(new-indv {GOL} {water region})
(new-indv {TYN} {water region})
(new-indv {ION} {water region})
(new-indv {ADR} {water region})
(new-indv {AEG} {water region})
(new-indv {BLA} {water region})
(new-indv {EAS} {water region})
(new-indv {NWY} {coastal region})
(new-indv {RUM} {coastal region})



(new-type {subcoast} {coastal region})
(new-indv {STP NC} {subcoast})
(new-indv {STP SC} {subcoast})
(new-indv {SPA NC} {subcoast})
(new-indv {SPA SC} {subcoast})
(new-indv {BUL EC} {subcoast})
(new-indv {BUL SC} {subcoast})







;;; Each diplomacy player is assigned a great power.
(new-type {great power} {thing})
(new-indv {Austria} {great power})
(new-indv {England} {great power})
(new-indv {France} {great power})
(new-indv {Germany} {great power})
(new-indv {Italy} {great power})
(new-indv {Russia} {great power})
(new-indv {Turkey} {great power})
(new-indv {NONE} {great power})

;;; A {supply center} is a special diplomacy region. Only some
;;; regions are supply centers and can be used for maintaining
;;; armies and fleets.
(new-type {supply center} {diplomacy region})
(new-is-a {ROM} {supply center})
(new-is-a {BUL EC} {supply center})
(new-is-a {BUL SC} {supply center})
(new-is-a {BUL} {supply center})
(new-is-a {SER} {supply center})
(new-is-a {DEN} {supply center})
(new-is-a {SWE} {supply center})
(new-is-a {NWY} {supply center})
(new-is-a {POR} {supply center})
(new-is-a {SPA NC} {supply center})
(new-is-a {SPA SC} {supply center})
(new-is-a {SPA} {supply center})
(new-is-a {POR} {supply center})
(new-is-a {TUN} {supply center})
(new-is-a {HOL} {supply center})
(new-is-a {BEL} {supply center})
(new-is-a {BER} {supply center})
(new-is-a {KIE} {supply center})
(new-is-a {MUN} {supply center})
(new-is-a {ANK} {supply center})
(new-is-a {CON} {supply center})
(new-is-a {SMY} {supply center})
(new-is-a {EDI} {supply center})
(new-is-a {LVP} {supply center})
(new-is-a {LON} {supply center})
(new-is-a {BUD} {supply center})
(new-is-a {TRI} {supply center})
(new-is-a {VIE} {supply center})
(new-is-a {MOS} {supply center})
(new-is-a {STP NC} {supply center})
(new-is-a {STP SC} {supply center})
(new-is-a {STP} {supply center})
(new-is-a {SEV} {supply center})
(new-is-a {WAR} {supply center})
(new-is-a {NAP} {supply center})
(new-is-a {RUM} {supply center})
(new-is-a {VEN} {supply center})
(new-is-a  {BRE} {supply center})
(new-is-a {PAR} {supply center})
(new-is-a  {MAR} {supply center})

;;; A move is geographically possible between two regions only
;;; if they are adjacent.
;;; However, armies may be convoyed between two non-adjacent
;;; land regions by fleets.
(new-relation {adjacent to} :a-inst-of {diplomacy region}
              :b-inst-of {diplomacy region} :symmetric t)
(new-statement {SYR} {adjacent to} {ARM})
(new-statement {SYR} {adjacent to} {SMY})
(new-statement {ANK} {adjacent to} {ARM})
(new-statement {ARM} {adjacent to} {SMY})
(new-statement {ARM} {adjacent to} {SEV})
(new-statement {ARM} {adjacent to} {BLA})
(new-statement {SMY} {adjacent to} {CON})
(new-statement {SMY} {adjacent to} {ANK})
(new-statement {SMY} {adjacent to} {ARM})
(new-statement {SMY} {adjacent to} {AEG})
(new-statement {ANK} {adjacent to} {CON})
(new-statement {ANK} {adjacent to} {BLA})
(new-statement {CON} {adjacent to} {AEG})
(new-statement {CON} {adjacent to} {BLA})
(new-statement {SEV} {adjacent to} {BLA})
(new-statement {SEV} {adjacent to} {MOS})
(new-statement {SEV} {adjacent to} {RUM})
(new-statement {UKR} {adjacent to} {GAL})
(new-statement {UKR} {adjacent to} {MOS})
(new-statement {UKR} {adjacent to} {WAR})
(new-statement {UKR} {adjacent to} {RUM})
(new-statement {WAR} {adjacent to} {GAL})
(new-statement {WAR} {adjacent to} {MOS})
(new-statement {WAR} {adjacent to} {PRU})
(new-statement {WAR} {adjacent to} {SIL})
(new-statement {WAR} {adjacent to} {LVN})
(new-statement {NAF} {adjacent to} {TUN})
(new-statement {MOS} {adjacent to} {LVN})
(new-statement {LVN} {adjacent to} {BAL})
(new-statement {LVN} {adjacent to} {PRU})
(new-statement {NAP} {adjacent to} {APU})
(new-statement {NAP} {adjacent to} {ROM})
(new-statement {NAP} {adjacent to} {TYN})
(new-statement {APU} {adjacent to} {ROM})
(new-statement {APU} {adjacent to} {ADR})
(new-statement {ROM} {adjacent to} {ADR})
(new-statement {TUS} {adjacent to} {ROM})
(new-statement {ROM} {adjacent to} {TYN})
(new-statement {TUS} {adjacent to} {TYN})
(new-statement {TUS} {adjacent to} {GOL})
(new-statement {TUS} {adjacent to} {VEN})
(new-statement {TUS} {adjacent to} {PIE})
(new-statement {UKR} {adjacent to} {LVN})
(new-statement {VEN} {adjacent to} {ADR})
(new-statement {VEN} {adjacent to} {PIE})
(new-statement {VEN} {adjacent to} {TYR})
(new-statement {VEN} {adjacent to} {TRI})
(new-statement {PIE} {adjacent to} {MAR})
(new-statement {PIE} {adjacent to} {GOL})
(new-statement {PIE} {adjacent to} {TYR})
(new-statement {MUN} {adjacent to} {BUR})
(new-statement {MUN} {adjacent to} {BOH})
(new-statement {MUN} {adjacent to} {TYR})
(new-statement {MUN} {adjacent to} {RUH})
(new-statement {MUN} {adjacent to} {KIE})
(new-statement {MUN} {adjacent to} {SIL})
(new-statement {MUN} {adjacent to} {BER})
(new-statement {SIL} {adjacent to} {PRU})
(new-statement {SIL} {adjacent to} {WAR})
(new-statement {SIL} {adjacent to} {BER})
(new-statement {SIL} {adjacent to} {BOH})
(new-statement {PRU} {adjacent to} {BAL})
(new-statement {PRU} {adjacent to} {BER})
(new-statement {PRU} {adjacent to} {LVN})
(new-statement {BER} {adjacent to} {KIE})
(new-statement {BER} {adjacent to} {BAL})
(new-statement {RUH} {adjacent to} {KIE})
(new-statement {RUH} {adjacent to} {BEL})
(new-statement {RUH} {adjacent to} {HOL})
(new-statement {RUH} {adjacent to} {BUR})
(new-statement {KIE} {adjacent to} {SIL})
(new-statement {BLA} {adjacent to} {RUM})
(new-statement {KIE} {adjacent to} {DEN})
(new-statement {KIE} {adjacent to} {HOL})
(new-statement {KIE} {adjacent to} {BAL})
(new-statement {MAR} {adjacent to} {PIE})
(new-statement {MAR} {adjacent to} {BUR})
(new-statement {MAR} {adjacent to} {GAS})
(new-statement {MAR} {adjacent to} {GOL})
(new-statement {BUR} {adjacent to} {PAR})
(new-statement {PAR} {adjacent to} {PIC})
(new-statement {PAR} {adjacent to} {GAS})
(new-statement {PAR} {adjacent to} {BRE})
(new-statement {BRE} {adjacent to} {GAS})
(new-statement {BRE} {adjacent to} {PIC})
(new-statement {BRE} {adjacent to} {ENG})
(new-statement {PIC} {adjacent to} {BEL})
(new-statement {PIC} {adjacent to} {BUR})
(new-statement {PIC} {adjacent to} {ENG})
(new-statement {LON} {adjacent to} {WAL})
(new-statement {LON} {adjacent to} {YOR})
(new-statement {LON} {adjacent to} {LVP})
(new-statement {LON} {adjacent to} {ENG})
(new-statement {YOR} {adjacent to} {LVP})
(new-statement {YOR} {adjacent to} {NTH})
(new-statement {YOR} {adjacent to} {WAL})
(new-statement {YOR} {adjacent to} {EDI})
(new-statement {LVP} {adjacent to} {WAL})
(new-statement {LVP} {adjacent to} {EDI})
(new-statement {LVP} {adjacent to} {IRI})
(new-statement {WAL} {adjacent to} {IRI})
(new-statement {WAL} {adjacent to} {ENG})
(new-statement {EDI} {adjacent to} {NRG})
(new-statement {EDI} {adjacent to} {NTH})
(new-statement {EDI} {adjacent to} {NAT})
(new-statement {BUD} {adjacent to} {VIE})
(new-statement {BUD} {adjacent to} {GAL})
(new-statement {BUD} {adjacent to} {TRI})
(new-statement {BUD} {adjacent to} {SER})
(new-statement {BUD} {adjacent to} {RUM})
(new-statement {GAL} {adjacent to} {BOH})
(new-statement {GAL} {adjacent to} {VIE})
(new-statement {TRI} {adjacent to} {VIE})
(new-statement {TRI} {adjacent to} {TYR})
(new-statement {TRI} {adjacent to} {ADR})
(new-statement {VIE} {adjacent to} {BOH})
(new-statement {VIE} {adjacent to} {TYR})
(new-statement {BOH} {adjacent to} {TYR})
(new-statement {GRE} {adjacent to} {SER})
(new-statement {SER} {adjacent to} {BUD})
(new-statement {SER} {adjacent to} {ALB})
(new-statement {SER} {adjacent to} {GRE})
(new-statement {SER} {adjacent to} {RUM})
(new-statement {ALB} {adjacent to} {ADR})
(new-statement {ALB} {adjacent to} {GRE})
(new-statement {FIN} {adjacent to} {BOT})
(new-statement {SWE} {adjacent to} {BOT})
(new-statement {SWE} {adjacent to} {BAL})
(new-statement {BAL} {adjacent to} {BOT})
(new-statement {GRE} {adjacent to} {ION})
(new-statement {ION} {adjacent to} {NAP})
(new-statement {ION} {adjacent to} {ALB})


(new-statement {DEN} {adjacent to} {BAL})
(new-statement {DEN} {adjacent to} {NTH})
(new-statement {HOL} {adjacent to} {KIE})
(new-statement {HOL} {adjacent to} {BEL})
(new-statement {HOL} {adjacent to} {RUH})
(new-statement {HOL} {adjacent to} {NTH})
(new-statement {BEL} {adjacent to} {ENG})
(new-statement {BEL} {adjacent to} {RUH})
(new-statement {BEL} {adjacent to} {PIC})
(new-statement {POR} {adjacent to} {MID})
(new-statement {WES} {adjacent to} {NAF})
(new-statement {WES} {adjacent to} {TUN})
(new-statement {TYN} {adjacent to} {TUN})

(new-statement {STP NC} {adjacent to} {BAR})
(new-statement {STP NC} {adjacent to} {NWY})
(new-statement {STP SC} {adjacent to} {FIN})
(new-statement {STP SC} {adjacent to} {BOT})
(new-statement {STP SC} {adjacent to} {LVN})
(new-statement {SPA NC} {adjacent to} {GAS})
(new-statement {STP SC} {adjacent to} {MOS})
(new-statement {SPA NC} {adjacent to} {POR})
(new-statement {SPA NC} {adjacent to} {MID})
(new-statement {SPA SC} {adjacent to} {POR})
(new-statement {SPA SC} {adjacent to} {MID})
(new-statement {SPA SC} {adjacent to} {WES})
(new-statement {BUL SC} {adjacent to} {GRE})
(new-statement {BUL SC} {adjacent to} {AEG})
(new-statement {BUL SC} {adjacent to} {CON})
(new-statement {BUL EC} {adjacent to} {CON})
(new-statement {BUL EC} {adjacent to} {RUM})
(new-statement {BUL EC} {adjacent to} {BLA})

;;; The {occupying unit} of a {diplomacy region}
;;; tells us whether the region is occupied by an army
;;; or a fleet.
;;; A land region can only be occupied by an army.
;;; A water region can only be occupied by a fleet.
;;; A coastal region can be occupied by an army or a fleet.

(new-indv-role {occupying unit} {diplomacy region} {unit})

;;; This is the great power that owns the unit in the region.
(new-indv-role {occupying great power} {diplomacy region} {great power})

;;; The {current owner} of a {supply center} is the {great power}
;;; that owns it. It is not necessary that an army or fleet of the
;;; currently occupies the region
;;; A center may be occupied by another power without transfer
;;; of ownership during certain phases of the game.
(new-indv-role {current owner} {supply center} {great power})


;;; Initialising supply centers.
(x-is-the-y-of-z {Germany} {current owner} {BER})
(x-is-the-y-of-z {Germany} {occupying great power} {BER})
(x-is-the-y-of-z {army} {occupying unit} {BER})

(x-is-the-y-of-z {Germany} {current owner} {KIE})
(x-is-the-y-of-z {Germany} {occupying great power} {KIE})
(x-is-the-y-of-z {fleet} {occupying unit} {KIE})

(x-is-the-y-of-z {Germany} {current owner} {MUN})
(x-is-the-y-of-z {Germany} {occupying great power} {MUN})
(x-is-the-y-of-z {army} {occupying unit} {MUN})

(x-is-the-y-of-z {Turkey} {current owner} {ANK})
(x-is-the-y-of-z {Turkey} {occupying great power} {ANK})
(x-is-the-y-of-z {fleet} {occupying unit} {ANK})

(x-is-the-y-of-z {Turkey} {current owner} {CON})
(x-is-the-y-of-z {Turkey} {occupying great power} {CON})
(x-is-the-y-of-z {army} {occupying unit} {CON})

(x-is-the-y-of-z {Turkey} {current owner} {SMY})
(x-is-the-y-of-z {Turkey} {occupying great power} {SMY})
(x-is-the-y-of-z {army} {occupying unit} {SMY})

(x-is-the-y-of-z {England} {current owner} {EDI})
(x-is-the-y-of-z {England} {occupying great power} {EDI})
(x-is-the-y-of-z {fleet} {occupying unit} {EDI})

(x-is-the-y-of-z {England} {current owner} {LVP})
(x-is-the-y-of-z {England} {occupying great power} {LVP})
(x-is-the-y-of-z {army} {occupying unit} {LVP})

(x-is-the-y-of-z {England} {current owner} {LON})
(x-is-the-y-of-z {England} {occupying great power} {LON})
(x-is-the-y-of-z {fleet} {occupying unit} {LON})

(x-is-the-y-of-z {Austria} {current owner} {BUD})
(x-is-the-y-of-z {Austria} {occupying great power} {BUD})
(x-is-the-y-of-z {army} {occupying unit} {BUD})

(x-is-the-y-of-z {Austria} {current owner} {TRI})
(x-is-the-y-of-z {Austria} {occupying great power} {TRI})
(x-is-the-y-of-z {fleet} {occupying unit} {TRI})

(x-is-the-y-of-z {Austria} {current owner} {VIE})
(x-is-the-y-of-z {Austria} {occupying great power} {VIE})
(x-is-the-y-of-z {army} {occupying unit} {VIE})

(x-is-the-y-of-z {Russia} {current owner} {MOS})
(x-is-the-y-of-z {Russia} {occupying great power} {MOS})
(x-is-the-y-of-z {army} {occupying unit} {MOS})

(x-is-the-y-of-z {Russia} {current owner} {STP})
(x-is-the-y-of-z {Russia} {occupying great power} {STP})
(x-is-the-y-of-z {fleet} {occupying unit} {STP})


(x-is-the-y-of-z {Russia} {current owner} {STP NC})
(x-is-the-y-of-z {Russia} {occupying great power} {STP NC})
(x-is-the-y-of-z {fleet} {occupying unit} {STP NC})

(x-is-the-y-of-z {Russia} {current owner} {SEV})
(x-is-the-y-of-z {Russia} {occupying great power} {SEV})
(x-is-the-y-of-z {fleet} {occupying unit} {SEV})

(x-is-the-y-of-z {Russia} {current owner} {WAR})
(x-is-the-y-of-z {Russia} {occupying great power} {WAR})
(x-is-the-y-of-z {army} {occupying unit} {WAR})

(x-is-the-y-of-z {Italy} {current owner} {NAP})
(x-is-the-y-of-z {Italy} {occupying great power} {NAP})
(x-is-the-y-of-z {fleet} {occupying unit} {NAP})

(x-is-the-y-of-z {Italy} {current owner} {ROM})
(x-is-the-y-of-z {Italy} {occupying great power} {ROM})
(x-is-the-y-of-z {army} {occupying unit} {ROM})

(x-is-the-y-of-z {Italy} {current owner} {VEN})
(x-is-the-y-of-z {Italy} {occupying great power} {VEN})
(x-is-the-y-of-z {army} {occupying unit} {VEN})

(x-is-the-y-of-z {France} {current owner} {BRE})
(x-is-the-y-of-z {France} {occupying great power} {BRE})
(x-is-the-y-of-z {fleet} {occupying unit} {BRE})

(x-is-the-y-of-z {France} {current owner} {MAR})
(x-is-the-y-of-z {France} {occupying great power} {MAR})
(x-is-the-y-of-z {army} {occupying unit} {MAR})

(x-is-the-y-of-z {France} {current owner} {PAR})
(x-is-the-y-of-z {France} {occupying great power} {PAR})
(x-is-the-y-of-z {army} {occupying unit} {PAR})


;;; Some global variables for order execution.
(defparameter *set-of-orders* NIL)
(defparameter *geo-valid-orders* NIL)
(defparameter *support-orders* NIL)
(defparameter *convoy-orders* NIL)
(defparameter *move-orders* NIL)
(defparameter *hold-orders* NIL)
(defparameter *final-move-orders* NIL)
(defparameter *final-hold-orders* NIL)





(defun equal-diplomacy-elements (elem1 elem2)
  "This function returns true if two diplomacy elements are equal
   and NIL otherwise."

  (eq (lookup-element elem1) (lookup-element elem2)))

(defun not-dip (x)
  (if (equal x :maybe)
  (return-from not-dip t))
  (if (equal x :yes)
  (return-from not-dip NIL))
  (if (equal x :no)
  (return-from not-dip t))
  )

;;; The initial location of an order is defined as the location at
;;;which the ordered unit currently exists.
(defun get-initial-location (order-line)
  "This function returns the initial location of an order."
  ;;; Hold order.
  (when (equal (nth 0 order-line) "H")
    (return-from get-initial-location (nth 2 order-line)))
  ;;; Move order.
  (when (equal (nth 0 order-line) "M")
      (return-from get-initial-location (nth 2 order-line)))
  ;;; Support order.
  (when (equal (nth 0 order-line) "S")
      (return-from get-initial-location (nth 3 order-line)))
  ;;; Convoy order.
  (when (equal (nth 0 order-line) "C")
      (return-from get-initial-location (nth 2 order-line)))
)

(defun type-of-support (order-line)
  "This function returns whether the support order is for a move(M)
   or hold(H)."
  (nth 2 order-line))

;;; The final location of an order is described as follows:
;;;       MOVE order: The proposed final destination of a unit.
;;;       SUPPORT order: The proposed final destination of the order that
;;;                      is being supported. The supporting unit does not
;;;                      actually change its location to the final location.
;;;       HOLD order: The final location is the same as the initial location.
;;;       CONVOY order: The final location is the final destination of the army
;;;                     that is being convoyed. The convoying fleet does not
;;;                     actually change its location.




(defun get-final-location (order-line)
  "This function returns the final location of an order."
  ;;; Hold order.
  (when (equal (nth 0 order-line) "H")
    (return-from get-final-location (nth 2 order-line)))
  ;;; Move order.
  (when (equal (nth 0 order-line) "M")
    (return-from get-final-location (nth 3 order-line)))
  ;;; Support order.
  (when (equal (nth 0 order-line) "S")
    (if (equal (type-of-support order-line) "H") (return-from get-final-location (nth 4 order-line)))
    (return-from get-final-location (nth 5 order-line))

    )
  ;;; Convoy order.
  (when (equal (nth 0 order-line) "C")
    (return-from get-final-location (nth 4 order-line)))
)


;;; Some helper functions.

(defun convoyee-initial-location(order-line)
  "This function returns the initial location of the army that is being
   convoyed."
  (nth 3 order-line))

(defun supportee-initial-location (order-line)
  "This function returns the initial location of the unit that is being
   supported."
  (nth 4 order-line))



(defun is-hold(order-line)
  "This function returns true if the order is a hold."
  (equal (nth 0 order-line) "H"))

(defun is-support(order-line)
  "This function returns true if the order is a support."
  (equal (nth 0 order-line) "S"))

(defun is-move(order-line)
  "This function returns true if the order is a move."
  (equal (nth 0 order-line) "M"))

(defun is-convoy(order-line)
  "This function returns true if the order is a convoy."
  (equal (nth 0 order-line) "C"))



(defun coast-valid (move-to-check)
  "This function returns true if a convoying fleet is adjacent to the army
   that is being convoyed."
  (statement-true? (convoyee-initial-location move-to-check)
                 {adjacent to} (get-initial-location move-to-check)))
(defun get-whole-unit(x)
  (if (not-dip (is-x-a-y? x {subcoast})) (return-from get-whole-unit x))
  (if (or(equal-diplomacy-elements x {STP NC})
         (equal-diplomacy-elements x {STP SC}))
    (return-from get-whole-unit "STP"))
  (if (or(equal-diplomacy-elements x {BUL EC})
         (equal-diplomacy-elements x {BUL SC}))
    (return-from get-whole-unit "BUL"))
  (if (or (equal-diplomacy-elements x {SPA NC})
          (equal-diplomacy-elements x {SPA SC}))
    (return-from get-whole-unit "SPA")))



(defun geo-ok? (move-to-check)
  "This function returns true if an order is geographically
   valid without a convoy"

  ;;; Hold orders are geographically valid.
  (if (equal (get-initial-location move-to-check)
             (get-final-location move-to-check)) (return-from geo-ok? t))
  ;;; For convoy orders, check an additional condition.
  (if(and (is-convoy move-to-check)
           (not (coast-valid move-to-check))) (return-from geo-ok? NIL))
  (statement-true? (get-initial-location move-to-check)
                   {adjacent to} (get-final-location move-to-check)))



(defun valid-support (x)
  "This function takes in a {support} order and checks if the support is valid
   or being cut in any way. A support is cut if there is a geographically valid
   attack on the supporting unit, even if the attack is not successful."
  (if (not (is-support x)) (return-from valid-support NIL))
  (loop for y in *final-move-orders*
    do (if (equal (get-whole-unit (get-final-location y)) (get-whole-unit (get-initial-location x)))
      (return-from valid-support NIL)))
  (return-from valid-support t))


(defun orders-to (location)
  "This function returns a list containing all the geographically valid
   orders to a location."
  (let ((orders-to-loc NIL))
    (loop for x in *set-of-orders*
      do (if (and (geo-ok? x)
               (is-move x)
               (equal (get-final-location x) location))
        (setf orders-to-loc (append orders-to-loc (list x)))))
    (return-from orders-to orders-to-loc)))

(defun add-support-move (move-order)
  "This function adds all the valid supporters for a move order and places the
   order in a new list."
  (let ((n 0))
    (loop for y in *support-orders*
      do (if (and  (equal (get-final-location move-order) (get-final-location y))
                   (equal (get-initial-location move-order)
                          (supportee-initial-location y))
                           (valid-support y))
                   (setf n (+ n 1))))
    (setf *final-move-orders* (append *final-move-orders* (list
                                                           (list (nth 0 move-order)
                                                                 (nth 1 move-order)
                                                                 (nth 2 move-order)
                                                                 (nth 3 move-order)
                                                                 n
                                                                 (nth 5 move-order
                                                                      )))))))
;;; Floating paren so I do not exceed 80 char limit.
(defun get-move-supporters (move-order)
  "This function adds all the valid supporters for a
   move order and returns the value."
    (let ((n 0))
    (loop for y in *support-orders*
      do (if (and (equal (get-final-location move-order) (get-final-location y))
                  (equal (get-initial-location move-order)
                          (supportee-initial-location y)))
                   (setf n (+ n 1))))
    (return-from get-move-supporters n)))


(defun add-support-hold (hold-order)
"This function adds all the valid supporters for a support order and places the
 order in a new list."
  (let ((n 0))
    (loop for y in *support-orders*
      do (if (and (valid-support y)
                  (equal (get-final-location hold-order) (get-final-location y))
                  (equal (get-initial-location hold-order)
                         (supportee-initial-location y)))
           (setf n (+ n 1))))
    (setf *final-hold-orders* (append *final-hold-orders* (list
                                                           (list
                                                           (nth 0 hold-order)
                                                           (nth 1 hold-order)
                                                           (nth 2 hold-order)
                                                           n
                                                           (nth 4 hold-order)))))))

(defun add-support-convoy(convoy-order)
  "This function adds all the valid supporters for
   a convoy order and returns the number."
  (let ((n 0))
    (loop for y in *support-orders*
      do (if (and (valid-support y)
                  (equal (nth 2 convoy-order) (get-final-location y))
                  (equal (nth 2 convoy-order)(supportee-initial-location y)))
                  (setf n (+ n 1))))
    (return-from add-support-convoy n)))


(defun count-convoy(convoy-order)
  "This function returns true if a
   geographically valid convoy can be succesfully carried out."
  (let ((attacks (orders-to (get-initial-location convoy-order)))
        (no-of-fleet-supporters (add-support-convoy convoy-order)))
    (loop for x in attacks
      do (if (> (get-move-supporters x) no-of-fleet-supporters)
           (return-from count-convoy NIL))))
  (return-from count-convoy t))



(defun valid-convoy-exists(move-to-check)
  "This function returns true if there exists a valid
   convoy for the given move order."
  (loop for x in *convoy-orders*
   do(if (and (equal (convoyee-initial-location x)
                     (get-initial-location move-to-check))
            (equal (get-final-location x) (get-final-location move-to-check))
            (count-convoy x))
       (return-from valid-convoy-exists t)
       )

    ))


(defun geo-ok-with-convoy? (move-to-check)
  "This function returns true if an order is geographically ok with a convoy."
  (if (equal (get-initial-location move-to-check)
             (get-final-location move-to-check))
    (return-from geo-ok-with-convoy? t))
  (if(and (is-convoy move-to-check)
          (not (coast-valid move-to-check)))
    (return-from geo-ok-with-convoy? NIL))
  (or (statement-true? (get-initial-location move-to-check){adjacent to}
                       (get-final-location move-to-check))
      (valid-convoy-exists move-to-check)))



(defun get-other-coast (x)
  (if (equal-diplomacy-elements x "STP NC")
    (return-from get-other-coast "STP SC")
    )
  (if (equal-diplomacy-elements x "STP SC")
     (return-from get-other-coast "STP NC"))

  (if (equal-diplomacy-elements x "SPA NC")
      (return-from get-other-coast "SPA SC")
         )
  (if (equal-diplomacy-elements x "SPA SC")
      (return-from get-other-coast "SPA NC"))
  (if (equal-diplomacy-elements x "BUL SC")
      (return-from get-other-coast "BUL EC"))

  (if (equal-diplomacy-elements x "BUL EC")
       (return-from get-other-coast "BUL SC"))


  )


(defun set-other-coast-empty (x)
  (if (not-dip (is-x-a-y? x {subcoast})) (return-from set-other-coast-empty t))
  (x-is-the-y-of-z "NONE" {occupying great power}  (get-other-coast x))

)

(defun make-move (order)
  "This function completes a valid order."
  (let ((initial-location (nth 2 order))
        (final-location (nth 3 order))
        (type-of-unit (nth 1 order))
        (owner-of-unit (nth 5 order)))
      (if (equal type-of-unit "F") (x-is-the-y-of-z
                                    {fleet} {occupying unit} final-location))
      (if (equal type-of-unit "A") (x-is-the-y-of-z {army}
                                                    {occupying unit}
                                                    final-location))
      (x-is-the-y-of-z owner-of-unit {occupying great power} final-location)
      (x-is-the-y-of-z {NONE} {occupying great power} initial-location)
      (x-is-the-y-of-z owner-of-unit {occupying great power} (get-whole-unit final-location))
      (if (equal type-of-unit "F") (x-is-the-y-of-z
                                    {fleet} {occupying unit} (get-whole-unit final-location)))
      (if (equal type-of-unit "A") (x-is-the-y-of-z {army}
                                                    {occupying unit}
                                                    (get-whole-unit final-location)))
      (set-other-coast-empty final-location)
      (set-other-coast-empty initial-location)

      (x-is-the-y-of-z {NONE} {occupying great power} (get-whole-unit initial-location))))


(defun best-move (x)
  "This function returns true if a move order to a location is the strongest
   move to that location"
    (loop for y in *final-move-orders*
         do (if  (equal (get-whole-unit (get-final-location x)) (get-whole-unit(get-final-location y)))
             (if (<= (nth 4 x) (nth 4 y))
               (if (not (equal (get-whole-unit (get-initial-location x)) (get-whole-unit(get-initial-location y))))
               (return-from best-move NIL)))))
     (return-from best-move t))








(defun nc-sc-empty (x)
  (if (not-dip (is-x-a-y? x {subcoast})) (return-from nc-sc-empty t))

  (let ((y (get-whole-unit x)))

    (if (not (or (equal (the-x-of-y {occupying great power}
                                                 y) NIL)
                 (equal-diplomacy-elements (the-x-of-y {occupying great power}
                                                       y) "NONE")))
      (return-from nc-sc-empty NIL)))
  (return-from nc-sc-empty t))




(defun final-resolution()
  "This function makes moves once the number of supporters for each
   order has been determined."
   (let  ((p 0))
      (loop for x in *final-move-orders*
        do(when (best-move x)
            (setf p 0)
            (if (= (nth 4 x) 0)(setf p 1))
            (write "hereee")
            ;;; final unoccupied
            (if (equal-diplomacy-elements (the-x-of-y {occupying great power}
                                                      (get-whole-unit(get-final-location x)))
                                          NIL) (setf p 0))
            (if (equal-diplomacy-elements (the-x-of-y {occupying great power}
                                                        (get-whole-unit(get-final-location x)))
                                                      {NONE}) (setf p 0))
            (write "okkk")
            (loop for y in *final-hold-orders*
              do (
                  if (and (equal (get-final-location x) (get-initial-location y))
                          (<= (nth 4 x) (nth 3 y )))
                   (setf p 1))
              )
            (write "yeP")
             ;;; If the move has more supporters than the hold, or
             ;;; there is no hold, make the move.

              (if (eq p 0) (make-move x))))))

(defun get-type-of-unit-ordered (order-line)
  "This function returns the type of unit an order is for."
      (let ((ordered-unit (nth 1 order-line )))
        (if(equal ordered-unit "F")
          (return-from get-type-of-unit-ordered {fleet}))
        (return-from get-type-of-unit-ordered {army})))
(defun unit-valid(order-line)
  "This function returns true if the ordered unit can move to the desired
   position."
  (or
   (and (equal-diplomacy-elements (get-type-of-unit-ordered order-line)
                                  {fleet})
        (equal (is-x-a-y? (get-final-location order-line) {fleet legal region})
               :yes))
   (and (equal-diplomacy-elements (get-type-of-unit-ordered order-line) {army})
        (equal (is-x-a-y? (get-final-location order-line) {army legal region})
               :yes))))


;;; Move orders are  expressed in text as following:
;;; M A Kie Ber (An army moving from Kie to Ber)
;;; M F NTH Den (A fleet moving from NTH to Den)
;;; Hold orders are commonly expressed in text as following:
;;; H A KIE  (An army in Kie will hold)
;;; H F NTH  (A fleet in NTH will hold)
;;; Support orders are commonly expressed in text as following:
;;; S A M Kie Pru Ber (An army in Kie supports a unit in Pru moving into Ber)
;;; S A H Kie Ber (An army in Kie supports a unit in Ber holding)
;;; S F M NTH Swe Den (A fleet in NTH supports a unit in Swe moving into Den)
;;; S F H NTH Den (A fleet in NTH supports a unit in Den holding)
;;; Convoy orders are expressed as:
;;; C F ENG LON BER
;;; To support a convoy, support the convoying fleet to hold.
;;; General format for order-line: (list "S" "F" "" "" .....)
;;; (order-input Austria order-line)
;;; For now, please use the standard 3 letter names for regions.
;;; This will be polished to allow for flexibility in names.
;;; for moves to st pet,Bukgaria, spain specify the coast
(defun order-input (player order-line)
  "This function takes in a diplomacy order and adds it to
   the set of orders to be resolved."
  (when (equal (nth 0 order-line) "H")
    (setf order-line (append order-line (list 0))))
  (when (equal (nth 0 order-line) "M")
      (setf order-line (append order-line (list 0))))
  (when (equal (nth 0 order-line) "C")
    (setf order-line (append order-line (list 0))))
  (setf order-line (append order-line (list player)))
  (if (and (equal-diplomacy-elements (get-type-of-unit-ordered order-line)
                                     (the-x-of-y {occupying unit}
                                                 (get-initial-location
                                                  order-line)))
           (equal-diplomacy-elements player (the-x-of-y {occupying great power}
                                                        (get-initial-location
                                                         order-line)))
           (unit-valid order-line))
       (setf *set-of-orders* (append *set-of-orders* (list order-line)))))


(defun execute-orders()
  "This function resolves all orders in the set-of-orders list."
  ;;; Store all the geographically valid orders in a list.
  (loop for x in *set-of-orders*
    do (if (geo-ok? x) (setf *geo-valid-orders*
                                    (append *geo-valid-orders* (list x)))))
  (write "here")
  ;;; Make lists of {move}, {hold} and {support} orders.
  (loop for x in *geo-valid-orders*
    do (if(is-support x)
         (setf *support-orders* (append *support-orders* (list x)))))

  (loop for x in *geo-valid-orders*
    do (if (is-move x) (setf *move-orders* (append *move-orders* (list x)))))
  (loop for x in *geo-valid-orders*
    do (if (is-hold x) (setf *hold-orders* (append *hold-orders* (list x)))))

  (loop for x in *geo-valid-orders*
    do (if (and (is-convoy x) (count-convoy x)) (setf *convoy-orders*
                                                      (append *convoy-orders*
                                                              (list x)))))
  (setf *move-orders* NIL)
  (setf *final-move-orders* NIL)
  (write "hello")
  ;;; Some additional move orders may be possible due to convoy orders.
  (loop for x in *set-of-orders*
     do(if (and (is-move x) (geo-ok-with-convoy? x))
         (setf *final-move-orders* (append *final-move-orders* (list x)))))

   ;;; Count the number of supporters for {hold} and {move} orders.
  (loop for x in *final-move-orders* do (add-support-move x))
  (loop for x in *hold-orders* do(add-support-hold x))

  ;;; Change the state of the game based on the supporters and opposers
  ;;; for each order.
  (write "before")
  (final-resolution)
  (write "after")
  )
