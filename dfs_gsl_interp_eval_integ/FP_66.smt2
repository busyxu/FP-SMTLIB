(declare-fun x1_ack!3530 () (_ BitVec 64))
(declare-fun x0_ack!3534 () (_ BitVec 64))
(declare-fun x2_ack!3531 () (_ BitVec 64))
(declare-fun b_ack!3533 () (_ BitVec 64))
(declare-fun a_ack!3532 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3534) ((_ to_fp 11 53) x1_ack!3530)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3530) ((_ to_fp 11 53) x2_ack!3531)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3530)
                       ((_ to_fp 11 53) x0_ack!3534))
               ((_ to_fp 11 53) x0_ack!3534))
       ((_ to_fp 11 53) x1_ack!3530)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3530)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3530)
                       ((_ to_fp 11 53) x0_ack!3534)))
       ((_ to_fp 11 53) x0_ack!3534)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3531)
                       ((_ to_fp 11 53) x1_ack!3530))
               ((_ to_fp 11 53) x1_ack!3530))
       ((_ to_fp 11 53) x2_ack!3531)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3531)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3531)
                       ((_ to_fp 11 53) x1_ack!3530)))
       ((_ to_fp 11 53) x1_ack!3530)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3530)
                    ((_ to_fp 11 53) x0_ack!3534))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3531)
                    ((_ to_fp 11 53) x1_ack!3530))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3532) ((_ to_fp 11 53) b_ack!3533))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3532) ((_ to_fp 11 53) x0_ack!3534))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3533) ((_ to_fp 11 53) x2_ack!3531))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3532) ((_ to_fp 11 53) b_ack!3533))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3532) ((_ to_fp 11 53) x0_ack!3534))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3532) ((_ to_fp 11 53) x1_ack!3530))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3533) ((_ to_fp 11 53) x0_ack!3534))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3533) ((_ to_fp 11 53) x1_ack!3530))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3530)
                    ((_ to_fp 11 53) x0_ack!3534))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
