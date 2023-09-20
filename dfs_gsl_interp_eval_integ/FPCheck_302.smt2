(declare-fun x1_ack!3647 () (_ BitVec 64))
(declare-fun x0_ack!3654 () (_ BitVec 64))
(declare-fun x2_ack!3648 () (_ BitVec 64))
(declare-fun b_ack!3653 () (_ BitVec 64))
(declare-fun a_ack!3652 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!3649 () (_ BitVec 64))
(declare-fun y1_ack!3650 () (_ BitVec 64))
(declare-fun y2_ack!3651 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3654) ((_ to_fp 11 53) x1_ack!3647)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3647) ((_ to_fp 11 53) x2_ack!3648)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3647)
                       ((_ to_fp 11 53) x0_ack!3654))
               ((_ to_fp 11 53) x0_ack!3654))
       ((_ to_fp 11 53) x1_ack!3647)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3647)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3647)
                       ((_ to_fp 11 53) x0_ack!3654)))
       ((_ to_fp 11 53) x0_ack!3654)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3648)
                       ((_ to_fp 11 53) x1_ack!3647))
               ((_ to_fp 11 53) x1_ack!3647))
       ((_ to_fp 11 53) x2_ack!3648)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3648)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3648)
                       ((_ to_fp 11 53) x1_ack!3647)))
       ((_ to_fp 11 53) x1_ack!3647)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3647)
                    ((_ to_fp 11 53) x0_ack!3654))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3648)
                    ((_ to_fp 11 53) x1_ack!3647))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3652) ((_ to_fp 11 53) b_ack!3653))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3652) ((_ to_fp 11 53) x0_ack!3654))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3653) ((_ to_fp 11 53) x2_ack!3648))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3652) ((_ to_fp 11 53) b_ack!3653))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3652) ((_ to_fp 11 53) x0_ack!3654))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3652) ((_ to_fp 11 53) x1_ack!3647))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3653) ((_ to_fp 11 53) x0_ack!3654))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3653) ((_ to_fp 11 53) x1_ack!3647))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3647)
                    ((_ to_fp 11 53) x0_ack!3654))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3651)
                           ((_ to_fp 11 53) y1_ack!3650))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3648)
                                   ((_ to_fp 11 53) x1_ack!3647)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3650)
                           ((_ to_fp 11 53) y0_ack!3649))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3647)
                                   ((_ to_fp 11 53) x0_ack!3654)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3648)
                                   ((_ to_fp 11 53) x1_ack!3647))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3647)
                                   ((_ to_fp 11 53) x0_ack!3654))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3647)
                                   ((_ to_fp 11 53) x0_ack!3654))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!3650)
                                   ((_ to_fp 11 53) y0_ack!3649))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3647)
                                   ((_ to_fp 11 53) x0_ack!3654)))
                   a!5)))
  (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
