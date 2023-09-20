(declare-fun a_ack!17 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult a_ack!17 #x00000001)))
(assert (not (bvult (concat #x00000000 a_ack!17) #x0000000000000065)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff2d97c7f3321d2
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4010000000000000)
                  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!17))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
