(declare-fun y_ack!66 () (_ BitVec 64))
(declare-fun x_ack!67 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!67))
             (fp.abs ((_ to_fp 11 53) y_ack!66)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) x_ack!67))
  (fp.abs ((_ to_fp 11 53) y_ack!66))))

(check-sat)
(exit)
