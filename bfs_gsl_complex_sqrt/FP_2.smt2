(declare-fun x_ack!70 () (_ BitVec 64))
(declare-fun y_ack!69 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!70) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!70)) (fp.abs ((_ to_fp 11 53) y_ack!69))))

(check-sat)
(exit)
