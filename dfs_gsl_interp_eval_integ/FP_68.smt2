(declare-fun x1_ack!3663 () (_ BitVec 64))
(declare-fun x0_ack!3667 () (_ BitVec 64))
(declare-fun x2_ack!3664 () (_ BitVec 64))
(declare-fun b_ack!3666 () (_ BitVec 64))
(declare-fun a_ack!3665 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3667) ((_ to_fp 11 53) x1_ack!3663)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3663) ((_ to_fp 11 53) x2_ack!3664)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3663)
                       ((_ to_fp 11 53) x0_ack!3667))
               ((_ to_fp 11 53) x0_ack!3667))
       ((_ to_fp 11 53) x1_ack!3663)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3663)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3663)
                       ((_ to_fp 11 53) x0_ack!3667)))
       ((_ to_fp 11 53) x0_ack!3667)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3664)
                       ((_ to_fp 11 53) x1_ack!3663))
               ((_ to_fp 11 53) x1_ack!3663))
       ((_ to_fp 11 53) x2_ack!3664)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3664)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3664)
                       ((_ to_fp 11 53) x1_ack!3663)))
       ((_ to_fp 11 53) x1_ack!3663)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3663)
                    ((_ to_fp 11 53) x0_ack!3667))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3664)
                    ((_ to_fp 11 53) x1_ack!3663))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3665) ((_ to_fp 11 53) b_ack!3666))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3665) ((_ to_fp 11 53) x0_ack!3667))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3666) ((_ to_fp 11 53) x2_ack!3664))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3665) ((_ to_fp 11 53) b_ack!3666))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3665) ((_ to_fp 11 53) x0_ack!3667))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3665) ((_ to_fp 11 53) x1_ack!3663))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3666) ((_ to_fp 11 53) x0_ack!3667))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3666) ((_ to_fp 11 53) x1_ack!3663))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3663)
                    ((_ to_fp 11 53) x0_ack!3667))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
