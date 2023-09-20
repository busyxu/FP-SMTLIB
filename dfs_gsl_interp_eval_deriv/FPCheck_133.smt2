(declare-fun x1_ack!1483 () (_ BitVec 64))
(declare-fun x0_ack!1489 () (_ BitVec 64))
(declare-fun x2_ack!1484 () (_ BitVec 64))
(declare-fun xx_ack!1488 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1485 () (_ BitVec 64))
(declare-fun y1_ack!1486 () (_ BitVec 64))
(declare-fun y2_ack!1487 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1489) ((_ to_fp 11 53) x1_ack!1483)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1483) ((_ to_fp 11 53) x2_ack!1484)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1483)
                       ((_ to_fp 11 53) x0_ack!1489))
               ((_ to_fp 11 53) x0_ack!1489))
       ((_ to_fp 11 53) x1_ack!1483)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1483)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1483)
                       ((_ to_fp 11 53) x0_ack!1489)))
       ((_ to_fp 11 53) x0_ack!1489)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1484)
                       ((_ to_fp 11 53) x1_ack!1483))
               ((_ to_fp 11 53) x1_ack!1483))
       ((_ to_fp 11 53) x2_ack!1484)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1484)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1484)
                       ((_ to_fp 11 53) x1_ack!1483)))
       ((_ to_fp 11 53) x1_ack!1483)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1483)
                    ((_ to_fp 11 53) x0_ack!1489))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1484)
                    ((_ to_fp 11 53) x1_ack!1483))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1488) ((_ to_fp 11 53) x0_ack!1489))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1488) ((_ to_fp 11 53) x2_ack!1484))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1488) ((_ to_fp 11 53) x0_ack!1489))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1488) ((_ to_fp 11 53) x1_ack!1483))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1483)
               ((_ to_fp 11 53) x0_ack!1489))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1487)
                           ((_ to_fp 11 53) y1_ack!1486))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1484)
                                   ((_ to_fp 11 53) x1_ack!1483)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1486)
                           ((_ to_fp 11 53) y0_ack!1485))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1483)
                                   ((_ to_fp 11 53) x0_ack!1489)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1484)
                                   ((_ to_fp 11 53) x1_ack!1483))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1483)
                                   ((_ to_fp 11 53) x0_ack!1489))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_OVERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1483)
                    ((_ to_fp 11 53) x0_ack!1489)))))))

(check-sat)
(exit)
