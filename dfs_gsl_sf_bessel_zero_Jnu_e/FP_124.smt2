(declare-fun a_ack!2061 () (_ BitVec 64))
(declare-fun b_ack!2060 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2061) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!2060)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2061) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!2060)))
(assert (not (bvule b_ack!2060 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2060)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!2061))))
(assert (not (bvule b_ack!2060 #x00000014)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2060)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) a_ack!2061))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4010000000000000)
                       ((_ to_fp 11 53) a_ack!2061))
               ((_ to_fp 11 53) a_ack!2061))
       ((_ to_fp 11 53) #x3cb0000000000000)))

(check-sat)
(exit)
