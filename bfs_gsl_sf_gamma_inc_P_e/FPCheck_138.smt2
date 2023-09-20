(declare-fun a_ack!392 () (_ BitVec 64))
(declare-fun b_ack!391 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!392) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!391) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!391) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!391) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!391)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!392)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!392) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!391)
                       ((_ to_fp 11 53) a_ack!392))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!391)
                       ((_ to_fp 11 53) a_ack!392)))
       ((_ to_fp 11 53) a_ack!392)))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!391 a_ack!392))

(check-sat)
(exit)
