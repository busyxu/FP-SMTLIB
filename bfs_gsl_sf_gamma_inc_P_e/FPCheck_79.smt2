(declare-fun a_ack!238 () (_ BitVec 64))
(declare-fun b_ack!237 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!238) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!237) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!237) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!237) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!237)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!238)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!238) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!238) ((_ to_fp 11 53) b_ack!237))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!237)
                       ((_ to_fp 11 53) a_ack!238))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!237)
                       ((_ to_fp 11 53) a_ack!238)))
       ((_ to_fp 11 53) a_ack!238)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!238) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 a_ack!238))

(check-sat)
(exit)
