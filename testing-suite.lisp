(setf *set-of-orders* NIL)
(setf *geo-valid-orders* NIL)
(setf *support-orders* NIL)
(setf *move-orders* NIL)
(setf *support-orders* NIL)
(setf *hold-orders* NIL)
(setf *convoy-orders* NIL)
(setf *final-move-orders* NIL)

;;; nothing happens
(order-input "France" (list "M" "A" "PAR" "BRE"))

;;; RESET before every set of orders

;;; TEST 1

;;; SET 1 
(order-input "France" (list "M" "A" "PAR" "PIC"))
(order-input "Austria" (list "M" "A" "VIE" "TYR"))

;;; SET 2
(order-input "France" (list "M" "A" "PIC" "BEL"))

;;; SET 3 
(order-input "France" (list "M" "A" "BEL" "RUH"))

;;; SET 4
(order-input "France" (list "M" "A" "RUH"  "MUN")) ;;; FAILS

;;; SET 5
(order-input "France" (list "M" "A" "RUH"  "MUN"))
(order-input "Austria" (list "S" "A" "M" "TYR" "RUH" "MUN"))

;;; TEST 2
;;; SET 1-5 same as TEST 1

;;; SET 6
;;; The first attack will not suceeed.
(order-input "Austria" (list "M" "A" "TYR" "MUN"))
(order-input "Russia" (list "M" "A" "WAR" "SIL"))

;;; SET 7
;;; 2 Units trying to swap, nothing happens
(order-input "France" (list "M" "A" "MUN" "SIL"))
(order-input "Russia" (list "M" "A" "SIL" "MUN"))

;;; SET 8










