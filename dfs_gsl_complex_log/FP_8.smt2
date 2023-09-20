(declare-fun y_ack!108 () (_ BitVec 64))
(declare-fun x_ack!109 () (_ BitVec 64))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!109))
             (fp.abs ((_ to_fp 11 53) y_ack!108)))))
(assert (fp.eq ((_ to_fp 11 53) x_ack!109) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) y_ack!108) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
