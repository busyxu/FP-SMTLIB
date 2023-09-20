(declare-fun x_ack!58 () (_ BitVec 64))
(declare-fun y_ack!57 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!58) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!58)) (fp.abs ((_ to_fp 11 53) y_ack!57))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) y_ack!57))
  (fp.abs ((_ to_fp 11 53) x_ack!58))))

(check-sat)
(exit)
