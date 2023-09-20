(declare-fun t_ack!3685 () (_ BitVec 64))
(declare-fun t1_ack!3686 () (_ BitVec 64))
(declare-fun h_ack!3687 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!3686)
                    ((_ to_fp 11 53) t_ack!3685))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3686)
               ((_ to_fp 11 53) t_ack!3685))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!3687) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!3686)
                ((_ to_fp 11 53) t_ack!3685))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!3687)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!3686)
               ((_ to_fp 11 53) t_ack!3685))))

(check-sat)
(exit)
