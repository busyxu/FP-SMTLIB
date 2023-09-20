(declare-fun c_ack!4313 () (_ BitVec 64))
(declare-fun b_ack!4312 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) c_ack!4313) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4312) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
