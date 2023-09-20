(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun p1_ack!79 () (_ BitVec 64))
(declare-fun x1_ack!80 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x0000000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!80)
                  ((_ to_fp 11 53) p1_ack!79)))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!80)
          ((_ to_fp 11 53) p1_ack!79))))

(check-sat)
(exit)
