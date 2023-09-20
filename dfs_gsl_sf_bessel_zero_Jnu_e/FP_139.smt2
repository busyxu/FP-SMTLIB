(declare-fun a_ack!2221 () (_ BitVec 64))
(declare-fun b_ack!2220 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2221) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!2220)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2221) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!2220)))
(assert (not (bvule b_ack!2220 #x0000000a)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2220)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!2221)))))

(check-sat)
(exit)
