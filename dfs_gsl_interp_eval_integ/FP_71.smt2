(declare-fun x1_ack!3786 () (_ BitVec 64))
(declare-fun x0_ack!3790 () (_ BitVec 64))
(declare-fun x2_ack!3787 () (_ BitVec 64))
(declare-fun b_ack!3789 () (_ BitVec 64))
(declare-fun a_ack!3788 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3790) ((_ to_fp 11 53) x1_ack!3786)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3786) ((_ to_fp 11 53) x2_ack!3787)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3786)
                       ((_ to_fp 11 53) x0_ack!3790))
               ((_ to_fp 11 53) x0_ack!3790))
       ((_ to_fp 11 53) x1_ack!3786)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3786)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3786)
                       ((_ to_fp 11 53) x0_ack!3790)))
       ((_ to_fp 11 53) x0_ack!3790)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3787)
                       ((_ to_fp 11 53) x1_ack!3786))
               ((_ to_fp 11 53) x1_ack!3786))
       ((_ to_fp 11 53) x2_ack!3787)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3787)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3787)
                       ((_ to_fp 11 53) x1_ack!3786)))
       ((_ to_fp 11 53) x1_ack!3786)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3786)
                    ((_ to_fp 11 53) x0_ack!3790))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3787)
                    ((_ to_fp 11 53) x1_ack!3786))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3788) ((_ to_fp 11 53) b_ack!3789))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3788) ((_ to_fp 11 53) x0_ack!3790))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3789) ((_ to_fp 11 53) x2_ack!3787))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3788) ((_ to_fp 11 53) b_ack!3789))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3788) ((_ to_fp 11 53) x0_ack!3790))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3788) ((_ to_fp 11 53) x1_ack!3786))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3789) ((_ to_fp 11 53) x0_ack!3790))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3789) ((_ to_fp 11 53) x1_ack!3786))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3786)
                    ((_ to_fp 11 53) x0_ack!3790))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
