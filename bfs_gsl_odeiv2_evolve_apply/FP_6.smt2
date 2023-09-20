(declare-fun t_ack!7148 () (_ BitVec 64))
(declare-fun t1_ack!7149 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!7149)
                    ((_ to_fp 11 53) t_ack!7148))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!7149)
               ((_ to_fp 11 53) t_ack!7148))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
