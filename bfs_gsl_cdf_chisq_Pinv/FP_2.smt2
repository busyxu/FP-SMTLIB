(declare-fun x_ack!23 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!23) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!23) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!23) ((_ to_fp 11 53) #x3fa999999999999a))))

(check-sat)
(exit)
