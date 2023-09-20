(declare-fun b_ack!61 () (_ BitVec 64))
(declare-fun alpha_ack!62 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!61) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) alpha_ack!62)
             ((_ to_fp 11 53) #xbff0000000000000))))

(check-sat)
(exit)
