(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!4 () (_ BitVec 64))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!4))
  (fp.abs ((_ to_fp 11 53) b_ack!4))))

(check-sat)
(exit)
