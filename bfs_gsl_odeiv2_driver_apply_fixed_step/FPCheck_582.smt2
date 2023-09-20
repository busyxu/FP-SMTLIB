(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun h_ack!2114 () (_ BitVec 64))
(declare-fun t_ack!2113 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) t_ack!2113)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!2114)
                  ((_ to_fp 11 53) #x4000000000000000)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) h_ack!2114)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
