(declare-fun t_ack!7489 () (_ BitVec 64))
(declare-fun t1_ack!7490 () (_ BitVec 64))
(declare-fun h_ack!7491 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7490)
                    ((_ to_fp 11 53) t_ack!7489))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7490)
               ((_ to_fp 11 53) t_ack!7489))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!7491) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
