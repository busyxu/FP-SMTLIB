(declare-fun n_ack!0 () (_ BitVec 64))
(assert (not (= #x0000000000000000 n_ack!0)))

(check-sat)
(exit)
