(declare-fun x_ack!244 () (_ BitVec 64))
(declare-fun y_ack!243 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!244) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!244))
        (fp.abs ((_ to_fp 11 53) y_ack!243))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!244) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
