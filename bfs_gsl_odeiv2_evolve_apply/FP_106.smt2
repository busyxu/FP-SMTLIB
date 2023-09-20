(declare-fun t_ack!10001 () (_ BitVec 64))
(declare-fun t1_ack!10002 () (_ BitVec 64))
(declare-fun h_ack!10003 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10002)
                    ((_ to_fp 11 53) t_ack!10001))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10002)
                    ((_ to_fp 11 53) t_ack!10001))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10002)
                ((_ to_fp 11 53) t_ack!10001))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10003)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10002)
                    ((_ to_fp 11 53) t_ack!10001)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10002)
                    ((_ to_fp 11 53) t_ack!10001))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
