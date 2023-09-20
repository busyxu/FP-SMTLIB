(declare-fun y_ack!22 () (_ BitVec 64))
(declare-fun x_ack!23 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!23))
             (fp.abs ((_ to_fp 11 53) y_ack!22)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) x_ack!23))
  (fp.abs ((_ to_fp 11 53) y_ack!22))))

(check-sat)
(exit)
