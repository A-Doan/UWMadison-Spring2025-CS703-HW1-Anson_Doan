; Problem 5
; Is it unnecessary to turn this in? Yes. (I think...)
; Do I want to make a copy of it anyways because it took me 30 minutes to write this? Yes.
; Is this repo the most logical place to leave this? Maybe, but logical or no I'm leaving it here anyways.

; Nodes and intervals declared here
; The graph has 4 nodes

; Node 0 intervals
(declare-const a0 Int)
(declare-const b0 Int)

; Node 1 intervals
(declare-const a1 Int)
(declare-const b1 Int)

; Node 2 intervals
(declare-const a2 Int)
(declare-const b2 Int)

; Node 3 intervals
(declare-const a3 Int)
(declare-const b3 Int)


; Check that each node interval's start and end points are in order
(assert (< a0 b0))
(assert (< a1 b1))
(assert (< a2 b2))
(assert (< a3 b3))


; Check that each edge represents overlapping intervals

; Node 0 adjacencies
(assert (or (< a0 a1 b0) (< a1 a0 b1)))
(assert (or (< a0 a3 b0) (< a3 a0 b3)))

; Node 1 adjacencies
(assert (or (< a1 a2 b1) (< a2 a1 b2)))

; Node 2 adjacencies
(assert (or (< a2 a3 b2) (< a3 a2 b3)))

; Node 3 adjacencies
; Already all checked!

; Check that non-adjacent nodes don't have intersecting intervals

; Node 0 non-adjacencies
(assert (or (< b0 a2) (< b2 a0)))

; Node 1 non-adjacencies
(assert (or (< b1 a3) (< b3 a1)))

; Node 2 non-adjacencies
; Checked already!

; Node 3 non-adjacencies
; Checked already!

; The following line is mandatory. It tells the solver
; to check the satisfiability
; of the above constraints.
(check-sat)
