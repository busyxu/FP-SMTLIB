(declare-fun a_ack!975 () (_ BitVec 64))
(declare-fun b_ack!974 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!975) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!974)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!975) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!974)))
(assert (not (bvule b_ack!974 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!974)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!975))))
(assert (not (bvule b_ack!974 #x00000014)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!974)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!975)))))

(check-sat)
(exit)
