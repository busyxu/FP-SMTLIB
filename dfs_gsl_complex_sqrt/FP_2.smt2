(declare-fun x_ack!55 () (_ BitVec 64))
(declare-fun y_ack!54 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) x_ack!55) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!54) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!55)) (fp.abs ((_ to_fp 11 53) y_ack!54))))

(check-sat)
(exit)
