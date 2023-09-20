(declare-fun t_ack!4377 () (_ BitVec 64))
(declare-fun t1_ack!4378 () (_ BitVec 64))
(declare-fun h_ack!4379 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4378)
                    ((_ to_fp 11 53) t_ack!4377))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4378)
               ((_ to_fp 11 53) t_ack!4377))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!4379) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!4378)
                ((_ to_fp 11 53) t_ack!4377))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!4379)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4378)
               ((_ to_fp 11 53) t_ack!4377))))

(check-sat)
(exit)
