(declare-fun n_ack!19 () (_ BitVec 32))
(assert (= #x00000000 (bvsrem n_ack!19 #x00000002)))
(assert (not (= #x00000000 n_ack!19)))

(check-sat)
(exit)
