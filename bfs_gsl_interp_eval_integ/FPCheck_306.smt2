(declare-fun x1_ack!3789 () (_ BitVec 64))
(declare-fun x0_ack!3793 () (_ BitVec 64))
(declare-fun x2_ack!3790 () (_ BitVec 64))
(declare-fun b_ack!3792 () (_ BitVec 64))
(declare-fun a_ack!3791 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3793) ((_ to_fp 11 53) x1_ack!3789)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3789) ((_ to_fp 11 53) x2_ack!3790)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3789)
                       ((_ to_fp 11 53) x0_ack!3793))
               ((_ to_fp 11 53) x0_ack!3793))
       ((_ to_fp 11 53) x1_ack!3789)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3789)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3789)
                       ((_ to_fp 11 53) x0_ack!3793)))
       ((_ to_fp 11 53) x0_ack!3793)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3790)
                       ((_ to_fp 11 53) x1_ack!3789))
               ((_ to_fp 11 53) x1_ack!3789))
       ((_ to_fp 11 53) x2_ack!3790)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3790)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3790)
                       ((_ to_fp 11 53) x1_ack!3789)))
       ((_ to_fp 11 53) x1_ack!3789)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3789)
                    ((_ to_fp 11 53) x0_ack!3793))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3790)
                    ((_ to_fp 11 53) x1_ack!3789))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3791) ((_ to_fp 11 53) b_ack!3792))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3791) ((_ to_fp 11 53) x0_ack!3793))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3792) ((_ to_fp 11 53) x2_ack!3790))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3791) ((_ to_fp 11 53) b_ack!3792))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3791) ((_ to_fp 11 53) x0_ack!3793))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3791) ((_ to_fp 11 53) x1_ack!3789)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3789) ((_ to_fp 11 53) a_ack!3791))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3792) ((_ to_fp 11 53) x1_ack!3789))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3792) ((_ to_fp 11 53) x2_ack!3790)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3790)
                    ((_ to_fp 11 53) x1_ack!3789))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!3791 x1_ack!3789))

(check-sat)
(exit)
