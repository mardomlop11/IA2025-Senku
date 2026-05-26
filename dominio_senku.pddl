(define (domain senku-domain)
 (:requirements :strips :typing :negative-preconditions)
 (:types cell)
 (:predicates 
             (occupied ?x - cell)
             (connected ?x - cell ?y - cell ?z - cell)
 )
 (:action jump
  :parameters ( ?x - cell ?y - cell ?z - cell)
  :precondition (and (connected ?x ?y ?z) (occupied ?x) (occupied ?y) (not (occupied ?z)))
  :effect (and (not (occupied ?x)) (not (occupied ?y)) (occupied ?z)))
)
