(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!20 () (_ BitVec 64))
(declare-fun y1_ack!21 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4024000000000000)
          ((_ to_fp 11 53) y1_ack!21))
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) y0_ack!20)
                  ((_ to_fp 11 53) y0_ack!20))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
