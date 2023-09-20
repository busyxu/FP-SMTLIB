(declare-fun y_ack!98 () (_ BitVec 64))
(declare-fun x_ack!99 () (_ BitVec 64))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!99))
             (fp.abs ((_ to_fp 11 53) y_ack!98)))))
(assert (fp.eq ((_ to_fp 11 53) x_ack!99) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
