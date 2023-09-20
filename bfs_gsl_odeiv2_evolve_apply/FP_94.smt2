(declare-fun t_ack!9642 () (_ BitVec 64))
(declare-fun t1_ack!9643 () (_ BitVec 64))
(declare-fun h_ack!9644 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9643)
                    ((_ to_fp 11 53) t_ack!9642))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9643)
                    ((_ to_fp 11 53) t_ack!9642))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!9643)
                ((_ to_fp 11 53) t_ack!9642))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!9644)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9643)
                    ((_ to_fp 11 53) t_ack!9642)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!9643)
                    ((_ to_fp 11 53) t_ack!9642))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
