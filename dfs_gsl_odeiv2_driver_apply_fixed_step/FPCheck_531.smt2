(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun h_ack!1916 () (_ BitVec 64))
(declare-fun t_ack!1915 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) t_ack!1915)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!1916)
                  ((_ to_fp 11 53) #x4000000000000000)))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!1916)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
