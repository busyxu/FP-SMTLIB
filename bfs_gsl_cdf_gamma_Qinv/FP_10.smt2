(declare-fun x_ack!102 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!102) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!102) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!102) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!102) ((_ to_fp 11 53) #x3fee666666666666))))

(check-sat)
(exit)
