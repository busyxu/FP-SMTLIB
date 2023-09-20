(declare-fun t_ack!7507 () (_ BitVec 64))
(declare-fun t1_ack!7508 () (_ BitVec 64))
(declare-fun h_ack!7509 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7508)
                    ((_ to_fp 11 53) t_ack!7507))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7508)
               ((_ to_fp 11 53) t_ack!7507))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) h_ack!7509) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
