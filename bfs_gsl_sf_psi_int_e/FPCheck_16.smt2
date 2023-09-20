(declare-fun a_ack!26 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvsle a_ack!26 #x00000000)))
(assert (not (bvsle a_ack!26 #x00000064)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!26))
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!26)))
  #x3f71111111111111))

(check-sat)
(exit)
