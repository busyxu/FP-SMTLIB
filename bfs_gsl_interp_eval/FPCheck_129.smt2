(declare-fun x1_ack!1429 () (_ BitVec 64))
(declare-fun x0_ack!1435 () (_ BitVec 64))
(declare-fun x2_ack!1430 () (_ BitVec 64))
(declare-fun xx_ack!1434 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1431 () (_ BitVec 64))
(declare-fun y1_ack!1432 () (_ BitVec 64))
(declare-fun y2_ack!1433 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1435) ((_ to_fp 11 53) x1_ack!1429)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1429) ((_ to_fp 11 53) x2_ack!1430)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1429)
                       ((_ to_fp 11 53) x0_ack!1435))
               ((_ to_fp 11 53) x0_ack!1435))
       ((_ to_fp 11 53) x1_ack!1429)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1429)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1429)
                       ((_ to_fp 11 53) x0_ack!1435)))
       ((_ to_fp 11 53) x0_ack!1435)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1430)
                       ((_ to_fp 11 53) x1_ack!1429))
               ((_ to_fp 11 53) x1_ack!1429))
       ((_ to_fp 11 53) x2_ack!1430)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1430)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1430)
                       ((_ to_fp 11 53) x1_ack!1429)))
       ((_ to_fp 11 53) x1_ack!1429)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1429)
                    ((_ to_fp 11 53) x0_ack!1435))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1430)
                    ((_ to_fp 11 53) x1_ack!1429))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1434) ((_ to_fp 11 53) x0_ack!1435))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1434) ((_ to_fp 11 53) x2_ack!1430))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1434) ((_ to_fp 11 53) x0_ack!1435))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1434) ((_ to_fp 11 53) x1_ack!1429)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1429) ((_ to_fp 11 53) xx_ack!1434))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1430)
               ((_ to_fp 11 53) x1_ack!1429))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1433)
                           ((_ to_fp 11 53) y1_ack!1432))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1430)
                                   ((_ to_fp 11 53) x1_ack!1429)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1432)
                           ((_ to_fp 11 53) y0_ack!1431))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1429)
                                   ((_ to_fp 11 53) x0_ack!1435)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1430)
                                   ((_ to_fp 11 53) x1_ack!1429))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1429)
                                   ((_ to_fp 11 53) x0_ack!1435))))))
  (FPCHECK_FSUB_ACCURACY
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
