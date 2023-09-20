(declare-fun t_ack!10080 () (_ BitVec 64))
(declare-fun t1_ack!10081 () (_ BitVec 64))
(declare-fun h_ack!10082 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10081)
                    ((_ to_fp 11 53) t_ack!10080))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10081)
                    ((_ to_fp 11 53) t_ack!10080))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10081)
                ((_ to_fp 11 53) t_ack!10080))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10082)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10081)
                    ((_ to_fp 11 53) t_ack!10080)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10081)
                    ((_ to_fp 11 53) t_ack!10080))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
