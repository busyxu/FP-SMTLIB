(declare-fun x1_ack!4614 () (_ BitVec 64))
(declare-fun x0_ack!4621 () (_ BitVec 64))
(declare-fun x2_ack!4615 () (_ BitVec 64))
(declare-fun b_ack!4620 () (_ BitVec 64))
(declare-fun a_ack!4619 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!4616 () (_ BitVec 64))
(declare-fun y1_ack!4617 () (_ BitVec 64))
(declare-fun y2_ack!4618 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4621) ((_ to_fp 11 53) x1_ack!4614)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4614) ((_ to_fp 11 53) x2_ack!4615)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4614)
                       ((_ to_fp 11 53) x0_ack!4621))
               ((_ to_fp 11 53) x0_ack!4621))
       ((_ to_fp 11 53) x1_ack!4614)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4614)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4614)
                       ((_ to_fp 11 53) x0_ack!4621)))
       ((_ to_fp 11 53) x0_ack!4621)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4615)
                       ((_ to_fp 11 53) x1_ack!4614))
               ((_ to_fp 11 53) x1_ack!4614))
       ((_ to_fp 11 53) x2_ack!4615)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4615)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4615)
                       ((_ to_fp 11 53) x1_ack!4614)))
       ((_ to_fp 11 53) x1_ack!4614)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4614)
                    ((_ to_fp 11 53) x0_ack!4621))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4615)
                    ((_ to_fp 11 53) x1_ack!4614))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4619) ((_ to_fp 11 53) b_ack!4620))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4619) ((_ to_fp 11 53) x0_ack!4621))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4620) ((_ to_fp 11 53) x2_ack!4615))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4619) ((_ to_fp 11 53) b_ack!4620))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4619) ((_ to_fp 11 53) x0_ack!4621))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4619) ((_ to_fp 11 53) x1_ack!4614)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4614) ((_ to_fp 11 53) a_ack!4619))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4620) ((_ to_fp 11 53) x1_ack!4614))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4620) ((_ to_fp 11 53) x2_ack!4615)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4615)
                    ((_ to_fp 11 53) x1_ack!4614))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4618)
                           ((_ to_fp 11 53) y1_ack!4617))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4615)
                                   ((_ to_fp 11 53) x1_ack!4614)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4617)
                           ((_ to_fp 11 53) y0_ack!4616))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4614)
                                   ((_ to_fp 11 53) x0_ack!4621)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4615)
                                   ((_ to_fp 11 53) x1_ack!4614))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4614)
                                   ((_ to_fp 11 53) x0_ack!4621))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_ACCURACY #x0000000000000000 a!4))))

(check-sat)
(exit)
