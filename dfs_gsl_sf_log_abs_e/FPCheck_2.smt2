(declare-fun a_ack!4 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) a_ack!4))))))
  (FPCHECK_FMUL_UNDERFLOW #x3cc0000000000000 a!1)))

(check-sat)
(exit)
