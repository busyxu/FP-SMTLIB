(declare-fun x_ack!21 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x_ack!21) ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
