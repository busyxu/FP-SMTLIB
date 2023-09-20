(declare-fun a_ack!2411 () (_ BitVec 64))
(declare-fun b_ack!2410 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2411) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!2410)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2411) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!2410)))
(assert (not (bvule b_ack!2410 #x0000000a)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2410)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!2411)))))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2410)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!2411)))))
(assert (not (bvult b_ack!2410 #x00000001)))
(assert (bvult (concat #x00000000 b_ack!2410) #x0000000000000065))
(assert (bvult #x0000000000000000
       (bvmul #x0000000000000008 (concat #x00000000 b_ack!2410))))
(assert (bvult (bvmul #x0000000000000008 (concat #x00000000 b_ack!2410))
       #x0000000000000321))

(check-sat)
(exit)
