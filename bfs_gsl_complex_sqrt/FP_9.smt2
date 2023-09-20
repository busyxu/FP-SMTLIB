(declare-fun x_ack!190 () (_ BitVec 64))
(declare-fun y_ack!189 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!190) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!190))
        (fp.abs ((_ to_fp 11 53) y_ack!189))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!190) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
