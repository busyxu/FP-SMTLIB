(declare-fun q_ack!0 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!0) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
