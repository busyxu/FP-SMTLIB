(declare-fun x1_ack!616 () (_ BitVec 64))
(declare-fun x0_ack!622 () (_ BitVec 64))
(declare-fun x2_ack!617 () (_ BitVec 64))
(declare-fun xx_ack!621 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!618 () (_ BitVec 64))
(declare-fun y1_ack!619 () (_ BitVec 64))
(declare-fun y2_ack!620 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!622) ((_ to_fp 11 53) x1_ack!616)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!616) ((_ to_fp 11 53) x2_ack!617)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!616)
                       ((_ to_fp 11 53) x0_ack!622))
               ((_ to_fp 11 53) x0_ack!622))
       ((_ to_fp 11 53) x1_ack!616)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!616)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!616)
                       ((_ to_fp 11 53) x0_ack!622)))
       ((_ to_fp 11 53) x0_ack!622)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!617)
                       ((_ to_fp 11 53) x1_ack!616))
               ((_ to_fp 11 53) x1_ack!616))
       ((_ to_fp 11 53) x2_ack!617)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!617)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!617)
                       ((_ to_fp 11 53) x1_ack!616)))
       ((_ to_fp 11 53) x1_ack!616)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!616)
                    ((_ to_fp 11 53) x0_ack!622))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!617)
                    ((_ to_fp 11 53) x1_ack!616))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!621) ((_ to_fp 11 53) x0_ack!622))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!621) ((_ to_fp 11 53) x2_ack!617))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!621) ((_ to_fp 11 53) x0_ack!622))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!621) ((_ to_fp 11 53) x1_ack!616)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!616) ((_ to_fp 11 53) xx_ack!621))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!617)
               ((_ to_fp 11 53) x1_ack!616))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!620)
                           ((_ to_fp 11 53) y1_ack!619))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!617)
                                   ((_ to_fp 11 53) x1_ack!616)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!619)
                           ((_ to_fp 11 53) y0_ack!618))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!616)
                                   ((_ to_fp 11 53) x0_ack!622)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!617)
                                   ((_ to_fp 11 53) x1_ack!616))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!616)
                                   ((_ to_fp 11 53) x0_ack!622))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x2_ack!617)
            ((_ to_fp 11 53) x1_ack!616))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!4)))))

(check-sat)
(exit)
