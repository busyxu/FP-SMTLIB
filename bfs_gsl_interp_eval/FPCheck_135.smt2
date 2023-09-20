(declare-fun x1_ack!1492 () (_ BitVec 64))
(declare-fun x0_ack!1498 () (_ BitVec 64))
(declare-fun x2_ack!1493 () (_ BitVec 64))
(declare-fun xx_ack!1497 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1494 () (_ BitVec 64))
(declare-fun y1_ack!1495 () (_ BitVec 64))
(declare-fun y2_ack!1496 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1498) ((_ to_fp 11 53) x1_ack!1492)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1492) ((_ to_fp 11 53) x2_ack!1493)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1492)
                       ((_ to_fp 11 53) x0_ack!1498))
               ((_ to_fp 11 53) x0_ack!1498))
       ((_ to_fp 11 53) x1_ack!1492)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1492)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1492)
                       ((_ to_fp 11 53) x0_ack!1498)))
       ((_ to_fp 11 53) x0_ack!1498)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1493)
                       ((_ to_fp 11 53) x1_ack!1492))
               ((_ to_fp 11 53) x1_ack!1492))
       ((_ to_fp 11 53) x2_ack!1493)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1493)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1493)
                       ((_ to_fp 11 53) x1_ack!1492)))
       ((_ to_fp 11 53) x1_ack!1492)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1492)
                    ((_ to_fp 11 53) x0_ack!1498))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1493)
                    ((_ to_fp 11 53) x1_ack!1492))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1497) ((_ to_fp 11 53) x0_ack!1498))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1497) ((_ to_fp 11 53) x2_ack!1493))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1497) ((_ to_fp 11 53) x0_ack!1498))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1497) ((_ to_fp 11 53) x1_ack!1492)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1492) ((_ to_fp 11 53) xx_ack!1497))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1493)
               ((_ to_fp 11 53) x1_ack!1492))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1496)
                           ((_ to_fp 11 53) y1_ack!1495))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1493)
                                   ((_ to_fp 11 53) x1_ack!1492)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1495)
                           ((_ to_fp 11 53) y0_ack!1494))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1492)
                                   ((_ to_fp 11 53) x0_ack!1498)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1493)
                                   ((_ to_fp 11 53) x1_ack!1492))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1492)
                                   ((_ to_fp 11 53) x0_ack!1498))))))
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
                    ((_ to_fp 11 53) x2_ack!1493)
                    ((_ to_fp 11 53) x1_ack!1492)))))))

(check-sat)
(exit)
