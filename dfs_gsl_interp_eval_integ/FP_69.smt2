(declare-fun x1_ack!3716 () (_ BitVec 64))
(declare-fun x0_ack!3720 () (_ BitVec 64))
(declare-fun x2_ack!3717 () (_ BitVec 64))
(declare-fun b_ack!3719 () (_ BitVec 64))
(declare-fun a_ack!3718 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3720) ((_ to_fp 11 53) x1_ack!3716)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3716) ((_ to_fp 11 53) x2_ack!3717)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3716)
                       ((_ to_fp 11 53) x0_ack!3720))
               ((_ to_fp 11 53) x0_ack!3720))
       ((_ to_fp 11 53) x1_ack!3716)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3716)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3716)
                       ((_ to_fp 11 53) x0_ack!3720)))
       ((_ to_fp 11 53) x0_ack!3720)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3717)
                       ((_ to_fp 11 53) x1_ack!3716))
               ((_ to_fp 11 53) x1_ack!3716))
       ((_ to_fp 11 53) x2_ack!3717)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3717)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3717)
                       ((_ to_fp 11 53) x1_ack!3716)))
       ((_ to_fp 11 53) x1_ack!3716)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3716)
                    ((_ to_fp 11 53) x0_ack!3720))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3717)
                    ((_ to_fp 11 53) x1_ack!3716))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3718) ((_ to_fp 11 53) b_ack!3719))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3718) ((_ to_fp 11 53) x0_ack!3720))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3719) ((_ to_fp 11 53) x2_ack!3717))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3718) ((_ to_fp 11 53) b_ack!3719))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3718) ((_ to_fp 11 53) x0_ack!3720))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3718) ((_ to_fp 11 53) x1_ack!3716))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3719) ((_ to_fp 11 53) x0_ack!3720))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3719) ((_ to_fp 11 53) x1_ack!3716))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3716)
                    ((_ to_fp 11 53) x0_ack!3720))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
