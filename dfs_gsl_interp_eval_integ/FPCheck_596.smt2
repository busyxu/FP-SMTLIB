(declare-fun x1_ack!7561 () (_ BitVec 64))
(declare-fun x0_ack!7568 () (_ BitVec 64))
(declare-fun x2_ack!7562 () (_ BitVec 64))
(declare-fun b_ack!7567 () (_ BitVec 64))
(declare-fun a_ack!7566 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7563 () (_ BitVec 64))
(declare-fun y1_ack!7564 () (_ BitVec 64))
(declare-fun y2_ack!7565 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7568) ((_ to_fp 11 53) x1_ack!7561)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7561) ((_ to_fp 11 53) x2_ack!7562)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7561)
                       ((_ to_fp 11 53) x0_ack!7568))
               ((_ to_fp 11 53) x0_ack!7568))
       ((_ to_fp 11 53) x1_ack!7561)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7561)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7561)
                       ((_ to_fp 11 53) x0_ack!7568)))
       ((_ to_fp 11 53) x0_ack!7568)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7562)
                       ((_ to_fp 11 53) x1_ack!7561))
               ((_ to_fp 11 53) x1_ack!7561))
       ((_ to_fp 11 53) x2_ack!7562)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7562)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7562)
                       ((_ to_fp 11 53) x1_ack!7561)))
       ((_ to_fp 11 53) x1_ack!7561)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7561)
                    ((_ to_fp 11 53) x0_ack!7568))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7562)
                    ((_ to_fp 11 53) x1_ack!7561))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7566) ((_ to_fp 11 53) b_ack!7567))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7566) ((_ to_fp 11 53) x0_ack!7568))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7567) ((_ to_fp 11 53) x2_ack!7562))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7566) ((_ to_fp 11 53) b_ack!7567))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7566) ((_ to_fp 11 53) x0_ack!7568))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7566) ((_ to_fp 11 53) x1_ack!7561))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7567) ((_ to_fp 11 53) x0_ack!7568)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7561)
                    ((_ to_fp 11 53) x0_ack!7568))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7565)
                           ((_ to_fp 11 53) y1_ack!7564))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7562)
                                   ((_ to_fp 11 53) x1_ack!7561)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7564)
                           ((_ to_fp 11 53) y0_ack!7563))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7561)
                                   ((_ to_fp 11 53) x0_ack!7568)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7562)
                                   ((_ to_fp 11 53) x1_ack!7561))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7561)
                                   ((_ to_fp 11 53) x0_ack!7568))))))
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
                                   ((_ to_fp 11 53) x1_ack!7561)
                                   ((_ to_fp 11 53) x0_ack!7568))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!7564)
                    ((_ to_fp 11 53) y0_ack!7563))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7561)
                    ((_ to_fp 11 53) x0_ack!7568)))
    a!5)))))

(check-sat)
(exit)
