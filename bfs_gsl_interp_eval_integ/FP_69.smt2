(declare-fun x1_ack!3774 () (_ BitVec 64))
(declare-fun x0_ack!3778 () (_ BitVec 64))
(declare-fun x2_ack!3775 () (_ BitVec 64))
(declare-fun b_ack!3777 () (_ BitVec 64))
(declare-fun a_ack!3776 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3778) ((_ to_fp 11 53) x1_ack!3774)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3774) ((_ to_fp 11 53) x2_ack!3775)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3774)
                       ((_ to_fp 11 53) x0_ack!3778))
               ((_ to_fp 11 53) x0_ack!3778))
       ((_ to_fp 11 53) x1_ack!3774)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3774)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3774)
                       ((_ to_fp 11 53) x0_ack!3778)))
       ((_ to_fp 11 53) x0_ack!3778)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3775)
                       ((_ to_fp 11 53) x1_ack!3774))
               ((_ to_fp 11 53) x1_ack!3774))
       ((_ to_fp 11 53) x2_ack!3775)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3775)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3775)
                       ((_ to_fp 11 53) x1_ack!3774)))
       ((_ to_fp 11 53) x1_ack!3774)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3774)
                    ((_ to_fp 11 53) x0_ack!3778))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3775)
                    ((_ to_fp 11 53) x1_ack!3774))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3776) ((_ to_fp 11 53) b_ack!3777))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3776) ((_ to_fp 11 53) x0_ack!3778))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3777) ((_ to_fp 11 53) x2_ack!3775))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3776) ((_ to_fp 11 53) b_ack!3777))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3776) ((_ to_fp 11 53) x0_ack!3778))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3776) ((_ to_fp 11 53) x1_ack!3774)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3774) ((_ to_fp 11 53) a_ack!3776))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3777) ((_ to_fp 11 53) x1_ack!3774))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3777) ((_ to_fp 11 53) x2_ack!3775)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3775)
                    ((_ to_fp 11 53) x1_ack!3774))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
