(declare-fun q_ack!1 () (_ BitVec 64))
(declare-fun j_ack!2 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!1) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!2 #x00000001)))

(check-sat)
(exit)
