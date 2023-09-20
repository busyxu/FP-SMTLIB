(declare-fun t_ack!4886 () (_ BitVec 64))
(declare-fun t1_ack!4887 () (_ BitVec 64))
(declare-fun h_ack!4888 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4887)
                    ((_ to_fp 11 53) t_ack!4886))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4887)
               ((_ to_fp 11 53) t_ack!4886))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!4888) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!4887)
                ((_ to_fp 11 53) t_ack!4886))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!4888)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4887)
               ((_ to_fp 11 53) t_ack!4886))))

(check-sat)
(exit)
