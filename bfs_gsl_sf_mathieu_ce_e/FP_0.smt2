(declare-fun n_ack!36 () (_ BitVec 32))
(assert (not (= #x00000000 (bvsrem n_ack!36 #x00000002))))

(check-sat)
(exit)
