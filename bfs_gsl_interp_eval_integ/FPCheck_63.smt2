(declare-fun x1_ack!614 () (_ BitVec 64))
(declare-fun x0_ack!621 () (_ BitVec 64))
(declare-fun x2_ack!615 () (_ BitVec 64))
(declare-fun b_ack!620 () (_ BitVec 64))
(declare-fun a_ack!619 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!616 () (_ BitVec 64))
(declare-fun y1_ack!617 () (_ BitVec 64))
(declare-fun y2_ack!618 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!621) ((_ to_fp 11 53) x1_ack!614)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!614) ((_ to_fp 11 53) x2_ack!615)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!614)
                       ((_ to_fp 11 53) x0_ack!621))
               ((_ to_fp 11 53) x0_ack!621))
       ((_ to_fp 11 53) x1_ack!614)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!614)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!614)
                       ((_ to_fp 11 53) x0_ack!621)))
       ((_ to_fp 11 53) x0_ack!621)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!615)
                       ((_ to_fp 11 53) x1_ack!614))
               ((_ to_fp 11 53) x1_ack!614))
       ((_ to_fp 11 53) x2_ack!615)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!615)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!615)
                       ((_ to_fp 11 53) x1_ack!614)))
       ((_ to_fp 11 53) x1_ack!614)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!614)
                    ((_ to_fp 11 53) x0_ack!621))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!615)
                    ((_ to_fp 11 53) x1_ack!614))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!619) ((_ to_fp 11 53) b_ack!620))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!619) ((_ to_fp 11 53) x0_ack!621))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!620) ((_ to_fp 11 53) x2_ack!615))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!619) ((_ to_fp 11 53) b_ack!620))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!619) ((_ to_fp 11 53) x0_ack!621))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!619) ((_ to_fp 11 53) x1_ack!614))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!620) ((_ to_fp 11 53) x0_ack!621)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!614)
                    ((_ to_fp 11 53) x0_ack!621))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!618)
                           ((_ to_fp 11 53) y1_ack!617))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!615)
                                   ((_ to_fp 11 53) x1_ack!614)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!617)
                           ((_ to_fp 11 53) y0_ack!616))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!614)
                                   ((_ to_fp 11 53) x0_ack!621)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!615)
                                   ((_ to_fp 11 53) x1_ack!614))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!614)
                                   ((_ to_fp 11 53) x0_ack!621))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!614)
            ((_ to_fp 11 53) x0_ack!621))
    a!4))))

(check-sat)
(exit)
