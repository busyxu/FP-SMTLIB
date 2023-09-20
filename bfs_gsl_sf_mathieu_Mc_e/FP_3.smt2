(declare-fun q_ack!22 () (_ BitVec 64))
(declare-fun j_ack!23 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!23 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!23)))

(check-sat)
(exit)
