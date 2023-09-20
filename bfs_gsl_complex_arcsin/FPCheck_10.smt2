(declare-fun y_ack!31 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) y_ack!31))
  (fp.abs ((_ to_fp 11 53) y_ack!31))))

(check-sat)
(exit)
