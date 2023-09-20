(declare-fun t_ack!275 () (_ BitVec 64))
(declare-fun t1_ack!276 () (_ BitVec 64))
(declare-fun h_ack!277 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!276)
                    ((_ to_fp 11 53) t_ack!275))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!276)
               ((_ to_fp 11 53) t_ack!275))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!277) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!276)
                ((_ to_fp 11 53) t_ack!275))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!277)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!276)
               ((_ to_fp 11 53) t_ack!275))))

(check-sat)
(exit)
