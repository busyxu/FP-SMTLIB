(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun x_initial_ack!38 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4020000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3feffbc4d1000000)
          ((_ to_fp 11 53) x_initial_ack!38))))

(check-sat)
(exit)
