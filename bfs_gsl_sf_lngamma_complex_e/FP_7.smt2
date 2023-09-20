(declare-fun a_ack!84 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!84) ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
