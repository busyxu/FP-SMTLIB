(declare-fun x_ack!128 () (_ BitVec 64))
(declare-fun y_ack!127 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!128) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!128))
             (fp.abs ((_ to_fp 11 53) y_ack!127)))))

(check-sat)
(exit)
