(declare-fun x1_ack!1497 () (_ BitVec 64))
(declare-fun x0_ack!1503 () (_ BitVec 64))
(declare-fun x2_ack!1498 () (_ BitVec 64))
(declare-fun xx_ack!1502 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1499 () (_ BitVec 64))
(declare-fun y1_ack!1500 () (_ BitVec 64))
(declare-fun y2_ack!1501 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1503) ((_ to_fp 11 53) x1_ack!1497)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1497) ((_ to_fp 11 53) x2_ack!1498)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1497)
                       ((_ to_fp 11 53) x0_ack!1503))
               ((_ to_fp 11 53) x0_ack!1503))
       ((_ to_fp 11 53) x1_ack!1497)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1497)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1497)
                       ((_ to_fp 11 53) x0_ack!1503)))
       ((_ to_fp 11 53) x0_ack!1503)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1498)
                       ((_ to_fp 11 53) x1_ack!1497))
               ((_ to_fp 11 53) x1_ack!1497))
       ((_ to_fp 11 53) x2_ack!1498)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1498)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1498)
                       ((_ to_fp 11 53) x1_ack!1497)))
       ((_ to_fp 11 53) x1_ack!1497)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1497)
                    ((_ to_fp 11 53) x0_ack!1503))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1498)
                    ((_ to_fp 11 53) x1_ack!1497))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1502) ((_ to_fp 11 53) x0_ack!1503))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1502) ((_ to_fp 11 53) x2_ack!1498))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1502) ((_ to_fp 11 53) x0_ack!1503))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1502) ((_ to_fp 11 53) x1_ack!1497))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1497)
               ((_ to_fp 11 53) x0_ack!1503))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1501)
                           ((_ to_fp 11 53) y1_ack!1500))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1498)
                                   ((_ to_fp 11 53) x1_ack!1497)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1500)
                           ((_ to_fp 11 53) y0_ack!1499))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1497)
                                   ((_ to_fp 11 53) x0_ack!1503)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1498)
                                   ((_ to_fp 11 53) x1_ack!1497))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1497)
                                   ((_ to_fp 11 53) x0_ack!1503))))))
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
                    ((_ to_fp 11 53) x1_ack!1497)
                    ((_ to_fp 11 53) x0_ack!1503)))))))

(check-sat)
(exit)
