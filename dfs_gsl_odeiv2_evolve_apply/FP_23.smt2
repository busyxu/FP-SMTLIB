(declare-fun t_ack!661 () (_ BitVec 64))
(declare-fun t1_ack!662 () (_ BitVec 64))
(declare-fun h_ack!663 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!662)
                    ((_ to_fp 11 53) t_ack!661))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!662)
               ((_ to_fp 11 53) t_ack!661))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!663) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!662)
                ((_ to_fp 11 53) t_ack!661))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!663)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!662)
               ((_ to_fp 11 53) t_ack!661))))

(check-sat)
(exit)
