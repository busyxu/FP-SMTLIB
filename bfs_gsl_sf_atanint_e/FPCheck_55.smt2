(declare-fun a_ack!71 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!71))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!71))
            ((_ to_fp 11 53) #x3e40000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!71))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!71))
            ((_ to_fp 11 53) #x4190000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff921fb54442d18
  (CF_log (fp.abs ((_ to_fp 11 53) a_ack!71)))))

(check-sat)
(exit)
