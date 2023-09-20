(declare-fun y_ack!100 () (_ BitVec 64))
(declare-fun x_ack!101 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!101))
             (fp.abs ((_ to_fp 11 53) y_ack!100)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (CF_log (fp.abs ((_ to_fp 11 53) y_ack!100)))
  #x7ff0000000000001))

(check-sat)
(exit)
