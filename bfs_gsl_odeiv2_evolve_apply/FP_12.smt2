(declare-fun t_ack!7222 () (_ BitVec 64))
(declare-fun t1_ack!7223 () (_ BitVec 64))
(declare-fun h_ack!7224 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7223)
               ((_ to_fp 11 53) t_ack!7222))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7223)
                    ((_ to_fp 11 53) t_ack!7222))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
