(declare-fun x1_ack!1525 () (_ BitVec 64))
(declare-fun x0_ack!1531 () (_ BitVec 64))
(declare-fun x2_ack!1526 () (_ BitVec 64))
(declare-fun xx_ack!1530 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1527 () (_ BitVec 64))
(declare-fun y1_ack!1528 () (_ BitVec 64))
(declare-fun y2_ack!1529 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1531) ((_ to_fp 11 53) x1_ack!1525)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1525) ((_ to_fp 11 53) x2_ack!1526)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1525)
                       ((_ to_fp 11 53) x0_ack!1531))
               ((_ to_fp 11 53) x0_ack!1531))
       ((_ to_fp 11 53) x1_ack!1525)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1525)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1525)
                       ((_ to_fp 11 53) x0_ack!1531)))
       ((_ to_fp 11 53) x0_ack!1531)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1526)
                       ((_ to_fp 11 53) x1_ack!1525))
               ((_ to_fp 11 53) x1_ack!1525))
       ((_ to_fp 11 53) x2_ack!1526)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1526)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1526)
                       ((_ to_fp 11 53) x1_ack!1525)))
       ((_ to_fp 11 53) x1_ack!1525)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1525)
                    ((_ to_fp 11 53) x0_ack!1531))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1526)
                    ((_ to_fp 11 53) x1_ack!1525))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1530) ((_ to_fp 11 53) x0_ack!1531))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1530) ((_ to_fp 11 53) x2_ack!1526))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1530) ((_ to_fp 11 53) x0_ack!1531))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1530) ((_ to_fp 11 53) x1_ack!1525))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1525)
               ((_ to_fp 11 53) x0_ack!1531))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1529)
                           ((_ to_fp 11 53) y1_ack!1528))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1526)
                                   ((_ to_fp 11 53) x1_ack!1525)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1528)
                           ((_ to_fp 11 53) y0_ack!1527))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1525)
                                   ((_ to_fp 11 53) x0_ack!1531)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1526)
                                   ((_ to_fp 11 53) x1_ack!1525))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1525)
                                   ((_ to_fp 11 53) x0_ack!1531))))))
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
                    ((_ to_fp 11 53) x1_ack!1525)
                    ((_ to_fp 11 53) x0_ack!1531)))))))

(check-sat)
(exit)
