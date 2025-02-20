; Graph g

; Fix colors 0, 1, 2
; Nodes and colors declared here... yay

; Node 0 colors
(declare-const p00 Bool)
(declare-const p01 Bool)
(declare-const p02 Bool)

; Node 1 colors
(declare-const p10 Bool)
(declare-const p11 Bool)
(declare-const p12 Bool)

; Node 2 colors
(declare-const p20 Bool)
(declare-const p21 Bool)
(declare-const p22 Bool)

; Node 3 colors
(declare-const p30 Bool)
(declare-const p31 Bool)
(declare-const p32 Bool)


; Check that each node 1) has a color and 2) only has one color

; Node 0 constraints
(assert (or p00 p01 p02))
(assert (not (and p00 p01)))
(assert (not (and p00 p02)))
(assert (not (and p01 p02)))

; Node 1 constraints
(assert (or p10 p11 p12))
(assert (not (and p10 p11)))
(assert (not (and p10 p12)))
(assert (not (and p11 p12)))

; Node 2 constraints
(assert (or p20 p21 p22))
(assert (not (and p20 p21)))
(assert (not (and p20 p22)))
(assert (not (and p21 p22)))

; Node 3 constraints
(assert (or p30 p31 p32))
(assert (not (and p30 p31)))
(assert (not (and p30 p32)))
(assert (not (and p31 p32)))

; Check that adjacent nodes do not have the same color
; For graph g every node is adjacent to every other... yay... (so many statement blocks)

; Node 0 adjacencies
(assert (not (and p00 p10)))
(assert (not (and p01 p11)))
(assert (not (and p02 p12)))

(assert (not (and p00 p20)))
(assert (not (and p01 p21)))
(assert (not (and p02 p22)))

(assert (not (and p00 p30)))
(assert (not (and p01 p31)))
(assert (not (and p02 p32)))

; Node 1 adjacencies
(assert (not (and p10 p20)))
(assert (not (and p11 p21)))
(assert (not (and p12 p22)))

(assert (not (and p10 p30)))
(assert (not (and p11 p31)))
(assert (not (and p12 p32)))

; Node 2 adjacencies
(assert (not (and p20 p30)))
(assert (not (and p21 p31)))
(assert (not (and p22 p32)))

; Node 3 adjacencies
; ...There are none! They've all already been checked

; The following line is mandatory. It tells the solver
; to check the satisfiability
; of the above constraints.
(check-sat)
