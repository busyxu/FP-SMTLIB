(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun h_ack!2120 () (_ BitVec 64))
(declare-fun t_ack!2119 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) t_ack!2119)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!2120)
                  ((_ to_fp 11 53) #x4000000000000000)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) h_ack!2120)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
