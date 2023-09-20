(declare-fun a_ack!359 () (_ BitVec 64))
(assert (fp.geq ((_ to_fp 11 53) a_ack!359) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!359) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!359) ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!359) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
