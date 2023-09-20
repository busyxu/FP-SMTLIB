(declare-fun x1_ack!1453 () (_ BitVec 64))
(declare-fun x0_ack!1459 () (_ BitVec 64))
(declare-fun x2_ack!1454 () (_ BitVec 64))
(declare-fun xx_ack!1458 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1455 () (_ BitVec 64))
(declare-fun y1_ack!1456 () (_ BitVec 64))
(declare-fun y2_ack!1457 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1459) ((_ to_fp 11 53) x1_ack!1453)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1453) ((_ to_fp 11 53) x2_ack!1454)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1453)
                       ((_ to_fp 11 53) x0_ack!1459))
               ((_ to_fp 11 53) x0_ack!1459))
       ((_ to_fp 11 53) x1_ack!1453)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1453)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1453)
                       ((_ to_fp 11 53) x0_ack!1459)))
       ((_ to_fp 11 53) x0_ack!1459)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1454)
                       ((_ to_fp 11 53) x1_ack!1453))
               ((_ to_fp 11 53) x1_ack!1453))
       ((_ to_fp 11 53) x2_ack!1454)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1454)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1454)
                       ((_ to_fp 11 53) x1_ack!1453)))
       ((_ to_fp 11 53) x1_ack!1453)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1453)
                    ((_ to_fp 11 53) x0_ack!1459))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1454)
                    ((_ to_fp 11 53) x1_ack!1453))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1458) ((_ to_fp 11 53) x0_ack!1459))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1458) ((_ to_fp 11 53) x2_ack!1454))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1458) ((_ to_fp 11 53) x0_ack!1459))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1458) ((_ to_fp 11 53) x1_ack!1453)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1453) ((_ to_fp 11 53) xx_ack!1458))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1454)
               ((_ to_fp 11 53) x1_ack!1453))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1457)
                           ((_ to_fp 11 53) y1_ack!1456))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1454)
                                   ((_ to_fp 11 53) x1_ack!1453)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1456)
                           ((_ to_fp 11 53) y0_ack!1455))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1453)
                                   ((_ to_fp 11 53) x0_ack!1459)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1454)
                                   ((_ to_fp 11 53) x1_ack!1453))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1453)
                                   ((_ to_fp 11 53) x0_ack!1459))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ACCURACY
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1454)
                    ((_ to_fp 11 53) x1_ack!1453)))))))

(check-sat)
(exit)
