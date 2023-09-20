(declare-fun y_ack!69 () (_ BitVec 64))
(declare-fun x_ack!70 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) y_ack!69) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) x_ack!70))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!70) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
