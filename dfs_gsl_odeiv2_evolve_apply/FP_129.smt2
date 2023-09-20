(declare-fun t_ack!4581 () (_ BitVec 64))
(declare-fun t1_ack!4582 () (_ BitVec 64))
(declare-fun h_ack!4583 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!4582)
                    ((_ to_fp 11 53) t_ack!4581))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4582)
               ((_ to_fp 11 53) t_ack!4581))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!4583) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!4582)
                ((_ to_fp 11 53) t_ack!4581))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!4583)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!4582)
               ((_ to_fp 11 53) t_ack!4581))))

(check-sat)
(exit)
