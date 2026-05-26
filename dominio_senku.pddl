(define (domain senku-domain)
 (:requirements :strips :typing)
 (:types cell)
 (:predicates 
             (empty ?x - cell)
             (occupied ?x - cell)
             (connected ?x - cell ?y - cell ?z - cell)
 )
 (:action jump
  :parameters ( ?x - cell ?y - cell ?z - cell)
  :precondition (and (connected ?x ?y ?z) (occupied ?x) (occupied ?y) (empty ?z))
  :effect (and (not (occupied ?x)) (not (occupied ?y)) (not (empty ?z)) (empty ?x) (empty ?y) (occupied ?z)))
)
