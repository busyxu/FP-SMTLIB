(declare-fun y_ack!64 () (_ BitVec 64))
(declare-fun x_ack!65 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!65))
             (fp.abs ((_ to_fp 11 53) y_ack!64)))))
(assert (FPCHECK_FADD_ACCURACY
  (CF_log (fp.abs ((_ to_fp 11 53) y_ack!64)))
  #x7ff0000000000001))

(check-sat)
(exit)
