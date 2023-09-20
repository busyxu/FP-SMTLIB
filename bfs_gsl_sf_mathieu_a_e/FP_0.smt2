(declare-fun n_ack!0 () (_ BitVec 32))
(assert (not (= #x00000000 (bvsrem n_ack!0 #x00000002))))

(check-sat)
(exit)
