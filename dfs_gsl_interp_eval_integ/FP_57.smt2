(declare-fun x1_ack!3116 () (_ BitVec 64))
(declare-fun x0_ack!3120 () (_ BitVec 64))
(declare-fun x2_ack!3117 () (_ BitVec 64))
(declare-fun b_ack!3119 () (_ BitVec 64))
(declare-fun a_ack!3118 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3120) ((_ to_fp 11 53) x1_ack!3116)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3116) ((_ to_fp 11 53) x2_ack!3117)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3116)
                       ((_ to_fp 11 53) x0_ack!3120))
               ((_ to_fp 11 53) x0_ack!3120))
       ((_ to_fp 11 53) x1_ack!3116)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3116)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3116)
                       ((_ to_fp 11 53) x0_ack!3120)))
       ((_ to_fp 11 53) x0_ack!3120)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3117)
                       ((_ to_fp 11 53) x1_ack!3116))
               ((_ to_fp 11 53) x1_ack!3116))
       ((_ to_fp 11 53) x2_ack!3117)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3117)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3117)
                       ((_ to_fp 11 53) x1_ack!3116)))
       ((_ to_fp 11 53) x1_ack!3116)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3116)
                    ((_ to_fp 11 53) x0_ack!3120))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3117)
                    ((_ to_fp 11 53) x1_ack!3116))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3118) ((_ to_fp 11 53) b_ack!3119))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3118) ((_ to_fp 11 53) x0_ack!3120))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3119) ((_ to_fp 11 53) x2_ack!3117))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3118) ((_ to_fp 11 53) b_ack!3119))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3118) ((_ to_fp 11 53) x0_ack!3120))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3118) ((_ to_fp 11 53) x1_ack!3116))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3119) ((_ to_fp 11 53) x0_ack!3120))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3119) ((_ to_fp 11 53) x1_ack!3116))))

(check-sat)
(exit)
