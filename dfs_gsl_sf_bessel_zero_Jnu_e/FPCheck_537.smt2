(declare-fun a_ack!2225 () (_ BitVec 64))
(declare-fun b_ack!2224 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2225) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!2224)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2225) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!2224)))
(assert (not (bvule b_ack!2224 #x0000000a)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2224)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!2225)))))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2224)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!2225)))))
(assert (not (bvult b_ack!2224 #x00000001)))
(assert (not (bvult (concat #x00000000 b_ack!2224) #x0000000000000065)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4010000000000000
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2224)))

(check-sat)
(exit)
