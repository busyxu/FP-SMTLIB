(declare-fun n_ack!40 () (_ BitVec 32))
(assert (not (= #x00000000 (bvsrem n_ack!40 #x00000002))))
(assert (= #x00000000 n_ack!40))

(check-sat)
(exit)
