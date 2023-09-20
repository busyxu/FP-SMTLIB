(declare-fun y_ack!72 () (_ BitVec 64))
(declare-fun x_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!73))
             (fp.abs ((_ to_fp 11 53) y_ack!72)))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) x_ack!73))
  (fp.abs ((_ to_fp 11 53) y_ack!72))))

(check-sat)
(exit)
