(declare-fun x_ack!51 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!51) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!51) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!51) ((_ to_fp 11 53) #x3fe0000000000000)))

(check-sat)
(exit)
