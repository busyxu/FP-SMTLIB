(declare-fun x_ack!4 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!4) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
