(declare-fun t_ack!3080 () (_ BitVec 64))
(declare-fun t1_ack!3081 () (_ BitVec 64))
(declare-fun h_ack!3082 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3081)
                    ((_ to_fp 11 53) t_ack!3080))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3081)
               ((_ to_fp 11 53) t_ack!3080))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!3082) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!3081)
                ((_ to_fp 11 53) t_ack!3080))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!3082)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3081)
               ((_ to_fp 11 53) t_ack!3080))))

(check-sat)
(exit)
