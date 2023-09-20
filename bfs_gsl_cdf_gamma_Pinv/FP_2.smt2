(declare-fun x_ack!12 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!12) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!12) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!12) ((_ to_fp 11 53) #x3fa999999999999a)))

(check-sat)
(exit)
