(declare-fun a_ack!248 () (_ BitVec 64))
(declare-fun b_ack!247 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!247) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!247) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!247)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!248)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!248) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!248) ((_ to_fp 11 53) b_ack!247))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!247)
                       ((_ to_fp 11 53) a_ack!248))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!247)
                       ((_ to_fp 11 53) a_ack!248)))
       ((_ to_fp 11 53) a_ack!248)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!248) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!247)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!248)))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!247 a_ack!248))

(check-sat)
(exit)
