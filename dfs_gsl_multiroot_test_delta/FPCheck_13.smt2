(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun x0_ack!30 () (_ BitVec 64))
(declare-fun x1_ack!29 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4024000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!29)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) x0_ack!30)
                  ((_ to_fp 11 53) x0_ack!30)))))

(check-sat)
(exit)
