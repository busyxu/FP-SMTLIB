(declare-fun t_ack!13231 () (_ BitVec 64))
(declare-fun t1_ack!13232 () (_ BitVec 64))
(declare-fun h_ack!13233 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!13232)
                    ((_ to_fp 11 53) t_ack!13231))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!13232)
                    ((_ to_fp 11 53) t_ack!13231))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!13232)
                ((_ to_fp 11 53) t_ack!13231))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!13233)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!13232)
                    ((_ to_fp 11 53) t_ack!13231)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!13232)
                    ((_ to_fp 11 53) t_ack!13231))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
