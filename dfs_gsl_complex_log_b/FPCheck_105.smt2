(declare-fun y1_ack!840 () (_ BitVec 64))
(declare-fun x1_ack!841 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!841))
             (fp.abs ((_ to_fp 11 53) y1_ack!840)))))
(assert (FPCHECK_FADD_ACCURACY
  (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!840)))
  #x7ff0000000000001))

(check-sat)
(exit)
