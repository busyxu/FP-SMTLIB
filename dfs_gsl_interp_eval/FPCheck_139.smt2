(declare-fun x1_ack!1568 () (_ BitVec 64))
(declare-fun x0_ack!1574 () (_ BitVec 64))
(declare-fun x2_ack!1569 () (_ BitVec 64))
(declare-fun xx_ack!1573 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1570 () (_ BitVec 64))
(declare-fun y1_ack!1571 () (_ BitVec 64))
(declare-fun y2_ack!1572 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1574) ((_ to_fp 11 53) x1_ack!1568)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1568) ((_ to_fp 11 53) x2_ack!1569)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1568)
                       ((_ to_fp 11 53) x0_ack!1574))
               ((_ to_fp 11 53) x0_ack!1574))
       ((_ to_fp 11 53) x1_ack!1568)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1568)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1568)
                       ((_ to_fp 11 53) x0_ack!1574)))
       ((_ to_fp 11 53) x0_ack!1574)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1569)
                       ((_ to_fp 11 53) x1_ack!1568))
               ((_ to_fp 11 53) x1_ack!1568))
       ((_ to_fp 11 53) x2_ack!1569)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1569)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1569)
                       ((_ to_fp 11 53) x1_ack!1568)))
       ((_ to_fp 11 53) x1_ack!1568)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1568)
                    ((_ to_fp 11 53) x0_ack!1574))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1569)
                    ((_ to_fp 11 53) x1_ack!1568))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1573) ((_ to_fp 11 53) x0_ack!1574))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1573) ((_ to_fp 11 53) x2_ack!1569))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1573) ((_ to_fp 11 53) x0_ack!1574))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1573) ((_ to_fp 11 53) x1_ack!1568))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1568)
               ((_ to_fp 11 53) x0_ack!1574))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1572)
                           ((_ to_fp 11 53) y1_ack!1571))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1569)
                                   ((_ to_fp 11 53) x1_ack!1568)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1571)
                           ((_ to_fp 11 53) y0_ack!1570))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1568)
                                   ((_ to_fp 11 53) x0_ack!1574)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1569)
                                   ((_ to_fp 11 53) x1_ack!1568))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1568)
                                   ((_ to_fp 11 53) x0_ack!1574))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1568)
                                   ((_ to_fp 11 53) x0_ack!1574))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!1573)
            ((_ to_fp 11 53) x0_ack!1574))
    a!5)))))

(check-sat)
(exit)
