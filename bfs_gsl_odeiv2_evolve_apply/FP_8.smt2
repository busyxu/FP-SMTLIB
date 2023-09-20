(declare-fun t_ack!7183 () (_ BitVec 64))
(declare-fun t1_ack!7184 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7184)
                    ((_ to_fp 11 53) t_ack!7183))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7184)
                    ((_ to_fp 11 53) t_ack!7183))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) t1_ack!7184)
                     ((_ to_fp 11 53) t_ack!7183))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7184)
               ((_ to_fp 11 53) t_ack!7183))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
