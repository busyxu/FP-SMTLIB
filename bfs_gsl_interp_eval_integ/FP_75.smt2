(declare-fun x1_ack!3997 () (_ BitVec 64))
(declare-fun x0_ack!4001 () (_ BitVec 64))
(declare-fun x2_ack!3998 () (_ BitVec 64))
(declare-fun b_ack!4000 () (_ BitVec 64))
(declare-fun a_ack!3999 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4001) ((_ to_fp 11 53) x1_ack!3997)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3997) ((_ to_fp 11 53) x2_ack!3998)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3997)
                       ((_ to_fp 11 53) x0_ack!4001))
               ((_ to_fp 11 53) x0_ack!4001))
       ((_ to_fp 11 53) x1_ack!3997)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3997)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3997)
                       ((_ to_fp 11 53) x0_ack!4001)))
       ((_ to_fp 11 53) x0_ack!4001)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3998)
                       ((_ to_fp 11 53) x1_ack!3997))
               ((_ to_fp 11 53) x1_ack!3997))
       ((_ to_fp 11 53) x2_ack!3998)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3998)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3998)
                       ((_ to_fp 11 53) x1_ack!3997)))
       ((_ to_fp 11 53) x1_ack!3997)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3997)
                    ((_ to_fp 11 53) x0_ack!4001))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3998)
                    ((_ to_fp 11 53) x1_ack!3997))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3999) ((_ to_fp 11 53) b_ack!4000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3999) ((_ to_fp 11 53) x0_ack!4001))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4000) ((_ to_fp 11 53) x2_ack!3998))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3999) ((_ to_fp 11 53) b_ack!4000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3999) ((_ to_fp 11 53) x0_ack!4001))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3999) ((_ to_fp 11 53) x1_ack!3997))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4000) ((_ to_fp 11 53) x0_ack!4001))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4000) ((_ to_fp 11 53) x1_ack!3997))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3997)
                    ((_ to_fp 11 53) x0_ack!4001))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
