(declare-fun y_ack!70 () (_ BitVec 64))
(declare-fun x_ack!71 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!71))
             (fp.abs ((_ to_fp 11 53) y_ack!70)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) x_ack!71))
  (fp.abs ((_ to_fp 11 53) y_ack!70))))

(check-sat)
(exit)
