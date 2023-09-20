(declare-fun y_ack!58 () (_ BitVec 64))
(declare-fun x_ack!59 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!59))
             (fp.abs ((_ to_fp 11 53) y_ack!58)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) x_ack!59))
  (fp.abs ((_ to_fp 11 53) y_ack!58))))

(check-sat)
(exit)
