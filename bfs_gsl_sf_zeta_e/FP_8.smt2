(declare-fun a_ack!102 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!102) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!102) ((_ to_fp 11 53) #xc033000000000000)))

(check-sat)
(exit)
