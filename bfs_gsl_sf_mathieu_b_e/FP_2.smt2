(declare-fun n_ack!2 () (_ BitVec 32))
(assert (not (= #x00000000 (bvsrem n_ack!2 #x00000002))))
(assert (= #x00000000 n_ack!2))

(check-sat)
(exit)
