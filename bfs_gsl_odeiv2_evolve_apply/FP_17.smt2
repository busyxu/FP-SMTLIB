(declare-fun t_ack!7351 () (_ BitVec 64))
(declare-fun t1_ack!7352 () (_ BitVec 64))
(declare-fun h_ack!7353 () (_ BitVec 64))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7352)
               ((_ to_fp 11 53) t_ack!7351))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!7353) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7352)
               ((_ to_fp 11 53) t_ack!7351))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
