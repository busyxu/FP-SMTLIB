(declare-fun t_ack!22 () (_ BitVec 64))
(declare-fun t1_ack!23 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!23)
                    ((_ to_fp 11 53) t_ack!22))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!23)
               ((_ to_fp 11 53) t_ack!22))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
