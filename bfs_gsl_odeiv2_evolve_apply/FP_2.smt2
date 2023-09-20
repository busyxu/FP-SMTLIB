(declare-fun t_ack!59 () (_ BitVec 64))
(declare-fun t1_ack!60 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!60)
                    ((_ to_fp 11 53) t_ack!59))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!60)
                    ((_ to_fp 11 53) t_ack!59))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
