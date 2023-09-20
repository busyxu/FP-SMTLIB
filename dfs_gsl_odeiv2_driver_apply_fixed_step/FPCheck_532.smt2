(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun h_ack!1920 () (_ BitVec 64))
(declare-fun t_ack!1919 () (_ BitVec 64))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) t_ack!1919)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!1920)
                  ((_ to_fp 11 53) #x4000000000000000)))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!1920)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
