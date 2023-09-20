(declare-fun n_ack!1 () (_ BitVec 32))
(assert (= #x00000000 (bvsrem n_ack!1 #x00000002)))
(assert (not (= #x00000000 n_ack!1)))

(check-sat)
(exit)
