(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun x0_ack!26 () (_ BitVec 64))
(declare-fun x1_ack!25 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4024000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!25)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) x0_ack!26)
                  ((_ to_fp 11 53) x0_ack!26)))))

(check-sat)
(exit)
