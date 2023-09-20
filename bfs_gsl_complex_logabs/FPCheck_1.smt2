(declare-fun y_ack!4 () (_ BitVec 64))
(declare-fun x_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!5)) (fp.abs ((_ to_fp 11 53) y_ack!4))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) y_ack!4))
  (fp.abs ((_ to_fp 11 53) x_ack!5))))

(check-sat)
(exit)
