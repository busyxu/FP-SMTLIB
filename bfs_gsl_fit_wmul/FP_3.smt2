(declare-fun w0_ack!84 () (_ BitVec 64))
(declare-fun w1_ack!83 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!84) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!83) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
