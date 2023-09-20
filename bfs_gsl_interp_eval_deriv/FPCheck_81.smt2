(declare-fun x1_ack!795 () (_ BitVec 64))
(declare-fun x0_ack!801 () (_ BitVec 64))
(declare-fun x2_ack!796 () (_ BitVec 64))
(declare-fun xx_ack!800 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!797 () (_ BitVec 64))
(declare-fun y1_ack!798 () (_ BitVec 64))
(declare-fun y2_ack!799 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!801) ((_ to_fp 11 53) x1_ack!795)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!795) ((_ to_fp 11 53) x2_ack!796)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!795)
                       ((_ to_fp 11 53) x0_ack!801))
               ((_ to_fp 11 53) x0_ack!801))
       ((_ to_fp 11 53) x1_ack!795)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!795)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!795)
                       ((_ to_fp 11 53) x0_ack!801)))
       ((_ to_fp 11 53) x0_ack!801)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!796)
                       ((_ to_fp 11 53) x1_ack!795))
               ((_ to_fp 11 53) x1_ack!795))
       ((_ to_fp 11 53) x2_ack!796)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!796)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!796)
                       ((_ to_fp 11 53) x1_ack!795)))
       ((_ to_fp 11 53) x1_ack!795)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!795)
                    ((_ to_fp 11 53) x0_ack!801))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!796)
                    ((_ to_fp 11 53) x1_ack!795))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!800) ((_ to_fp 11 53) x0_ack!801))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!800) ((_ to_fp 11 53) x2_ack!796))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!800) ((_ to_fp 11 53) x0_ack!801))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!800) ((_ to_fp 11 53) x1_ack!795))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!795)
               ((_ to_fp 11 53) x0_ack!801))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!799)
                           ((_ to_fp 11 53) y1_ack!798))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!796)
                                   ((_ to_fp 11 53) x1_ack!795)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!798)
                           ((_ to_fp 11 53) y0_ack!797))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!795)
                                   ((_ to_fp 11 53) x0_ack!801)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!796)
                                   ((_ to_fp 11 53) x1_ack!795))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!795)
                                   ((_ to_fp 11 53) x0_ack!801))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_INVALID
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!795)
                    ((_ to_fp 11 53) x0_ack!801)))))))

(check-sat)
(exit)
