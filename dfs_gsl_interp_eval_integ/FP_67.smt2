(declare-fun x1_ack!3560 () (_ BitVec 64))
(declare-fun x0_ack!3564 () (_ BitVec 64))
(declare-fun x2_ack!3561 () (_ BitVec 64))
(declare-fun b_ack!3563 () (_ BitVec 64))
(declare-fun a_ack!3562 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3564) ((_ to_fp 11 53) x1_ack!3560)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3560) ((_ to_fp 11 53) x2_ack!3561)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3560)
                       ((_ to_fp 11 53) x0_ack!3564))
               ((_ to_fp 11 53) x0_ack!3564))
       ((_ to_fp 11 53) x1_ack!3560)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3560)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3560)
                       ((_ to_fp 11 53) x0_ack!3564)))
       ((_ to_fp 11 53) x0_ack!3564)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3561)
                       ((_ to_fp 11 53) x1_ack!3560))
               ((_ to_fp 11 53) x1_ack!3560))
       ((_ to_fp 11 53) x2_ack!3561)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3561)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3561)
                       ((_ to_fp 11 53) x1_ack!3560)))
       ((_ to_fp 11 53) x1_ack!3560)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3560)
                    ((_ to_fp 11 53) x0_ack!3564))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3561)
                    ((_ to_fp 11 53) x1_ack!3560))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3562) ((_ to_fp 11 53) b_ack!3563))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3562) ((_ to_fp 11 53) x0_ack!3564))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3563) ((_ to_fp 11 53) x2_ack!3561))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3562) ((_ to_fp 11 53) b_ack!3563))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3562) ((_ to_fp 11 53) x0_ack!3564))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3562) ((_ to_fp 11 53) x1_ack!3560))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3563) ((_ to_fp 11 53) x0_ack!3564))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3563) ((_ to_fp 11 53) x1_ack!3560))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3560)
                    ((_ to_fp 11 53) x0_ack!3564))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
