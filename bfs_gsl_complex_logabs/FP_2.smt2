(declare-fun y_ack!52 () (_ BitVec 64))
(declare-fun x_ack!53 () (_ BitVec 64))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!53))
             (fp.abs ((_ to_fp 11 53) y_ack!52)))))

(check-sat)
(exit)
