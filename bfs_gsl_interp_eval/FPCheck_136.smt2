(declare-fun x1_ack!1506 () (_ BitVec 64))
(declare-fun x0_ack!1512 () (_ BitVec 64))
(declare-fun x2_ack!1507 () (_ BitVec 64))
(declare-fun xx_ack!1511 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1508 () (_ BitVec 64))
(declare-fun y1_ack!1509 () (_ BitVec 64))
(declare-fun y2_ack!1510 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1512) ((_ to_fp 11 53) x1_ack!1506)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1506) ((_ to_fp 11 53) x2_ack!1507)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1506)
                       ((_ to_fp 11 53) x0_ack!1512))
               ((_ to_fp 11 53) x0_ack!1512))
       ((_ to_fp 11 53) x1_ack!1506)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1506)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1506)
                       ((_ to_fp 11 53) x0_ack!1512)))
       ((_ to_fp 11 53) x0_ack!1512)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1507)
                       ((_ to_fp 11 53) x1_ack!1506))
               ((_ to_fp 11 53) x1_ack!1506))
       ((_ to_fp 11 53) x2_ack!1507)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1507)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1507)
                       ((_ to_fp 11 53) x1_ack!1506)))
       ((_ to_fp 11 53) x1_ack!1506)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1506)
                    ((_ to_fp 11 53) x0_ack!1512))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1507)
                    ((_ to_fp 11 53) x1_ack!1506))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1511) ((_ to_fp 11 53) x0_ack!1512))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1511) ((_ to_fp 11 53) x2_ack!1507))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1511) ((_ to_fp 11 53) x0_ack!1512))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1511) ((_ to_fp 11 53) x1_ack!1506)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1506) ((_ to_fp 11 53) xx_ack!1511))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1507)
               ((_ to_fp 11 53) x1_ack!1506))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1510)
                           ((_ to_fp 11 53) y1_ack!1509))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1507)
                                   ((_ to_fp 11 53) x1_ack!1506)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1509)
                           ((_ to_fp 11 53) y0_ack!1508))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1506)
                                   ((_ to_fp 11 53) x0_ack!1512)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1507)
                                   ((_ to_fp 11 53) x1_ack!1506))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1506)
                                   ((_ to_fp 11 53) x0_ack!1512))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_INVALID
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1507)
                    ((_ to_fp 11 53) x1_ack!1506)))))))

(check-sat)
(exit)
