(declare-fun x1_ack!5614 () (_ BitVec 64))
(declare-fun x0_ack!5621 () (_ BitVec 64))
(declare-fun x2_ack!5615 () (_ BitVec 64))
(declare-fun b_ack!5620 () (_ BitVec 64))
(declare-fun a_ack!5619 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5616 () (_ BitVec 64))
(declare-fun y1_ack!5617 () (_ BitVec 64))
(declare-fun y2_ack!5618 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5621) ((_ to_fp 11 53) x1_ack!5614)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5614) ((_ to_fp 11 53) x2_ack!5615)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5614)
                       ((_ to_fp 11 53) x0_ack!5621))
               ((_ to_fp 11 53) x0_ack!5621))
       ((_ to_fp 11 53) x1_ack!5614)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5614)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5614)
                       ((_ to_fp 11 53) x0_ack!5621)))
       ((_ to_fp 11 53) x0_ack!5621)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5615)
                       ((_ to_fp 11 53) x1_ack!5614))
               ((_ to_fp 11 53) x1_ack!5614))
       ((_ to_fp 11 53) x2_ack!5615)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5615)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5615)
                       ((_ to_fp 11 53) x1_ack!5614)))
       ((_ to_fp 11 53) x1_ack!5614)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5614)
                    ((_ to_fp 11 53) x0_ack!5621))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5615)
                    ((_ to_fp 11 53) x1_ack!5614))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5619) ((_ to_fp 11 53) b_ack!5620))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5619) ((_ to_fp 11 53) x0_ack!5621))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5620) ((_ to_fp 11 53) x2_ack!5615))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5619) ((_ to_fp 11 53) b_ack!5620))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5619) ((_ to_fp 11 53) x0_ack!5621))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5619) ((_ to_fp 11 53) x1_ack!5614))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5620) ((_ to_fp 11 53) x0_ack!5621))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5620) ((_ to_fp 11 53) x1_ack!5614)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5614) ((_ to_fp 11 53) b_ack!5620))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5614)
                    ((_ to_fp 11 53) x0_ack!5621))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5618)
                           ((_ to_fp 11 53) y1_ack!5617))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5615)
                                   ((_ to_fp 11 53) x1_ack!5614)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5617)
                           ((_ to_fp 11 53) y0_ack!5616))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5614)
                                   ((_ to_fp 11 53) x0_ack!5621)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5615)
                                   ((_ to_fp 11 53) x1_ack!5614))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5614)
                                   ((_ to_fp 11 53) x0_ack!5621))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_UNDERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5614)
                    ((_ to_fp 11 53) x0_ack!5621)))))))

(check-sat)
(exit)
