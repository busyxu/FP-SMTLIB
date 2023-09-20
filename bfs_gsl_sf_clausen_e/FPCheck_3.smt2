(declare-fun a_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  (CF_floor (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!5)
                    ((_ to_fp 11 53) #x401921fb54442d18)))))

(check-sat)
(exit)
