(declare-fun y_ack!106 () (_ BitVec 64))
(declare-fun x_ack!107 () (_ BitVec 64))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!107))
             (fp.abs ((_ to_fp 11 53) y_ack!106)))))
(assert (fp.eq ((_ to_fp 11 53) x_ack!107) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
