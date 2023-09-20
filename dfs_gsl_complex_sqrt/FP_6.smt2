(declare-fun x_ack!110 () (_ BitVec 64))
(declare-fun y_ack!109 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!110) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!110))
             (fp.abs ((_ to_fp 11 53) y_ack!109)))))

(check-sat)
(exit)
