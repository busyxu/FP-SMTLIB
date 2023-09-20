(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun x0_ack!5 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) x0_ack!5))))

(check-sat)
(exit)
