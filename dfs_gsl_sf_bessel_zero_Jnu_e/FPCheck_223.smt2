(declare-fun a_ack!995 () (_ BitVec 64))
(declare-fun b_ack!994 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!995) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!994)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!995) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!994)))
(assert (not (bvule b_ack!994 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!994)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!995))))
(assert (not (bvule b_ack!994 #x00000014)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!994)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!995)))))
(assert (not (bvult b_ack!994 #x00000001)))
(assert (not (bvult (concat #x00000000 b_ack!994) #x0000000000000065)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff2d97c7f3321d2
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4010000000000000)
                  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!994))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
