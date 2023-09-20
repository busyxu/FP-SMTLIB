(declare-fun y1_ack!60 () (_ BitVec 64))
(declare-fun x1_ack!61 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!61))
             (fp.abs ((_ to_fp 11 53) y1_ack!60)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!60)))
  #x7ff0000000000001))

(check-sat)
(exit)
