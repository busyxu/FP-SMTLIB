(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun h_ack!1111 () (_ BitVec 64))
(declare-fun t_ack!1110 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY
  t_ack!1110
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) h_ack!1111)
                  ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
