(declare-fun x1_ack!1513 () (_ BitVec 64))
(declare-fun x0_ack!1519 () (_ BitVec 64))
(declare-fun x2_ack!1514 () (_ BitVec 64))
(declare-fun xx_ack!1518 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1515 () (_ BitVec 64))
(declare-fun y1_ack!1516 () (_ BitVec 64))
(declare-fun y2_ack!1517 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1519) ((_ to_fp 11 53) x1_ack!1513)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1513) ((_ to_fp 11 53) x2_ack!1514)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1513)
                       ((_ to_fp 11 53) x0_ack!1519))
               ((_ to_fp 11 53) x0_ack!1519))
       ((_ to_fp 11 53) x1_ack!1513)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1513)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1513)
                       ((_ to_fp 11 53) x0_ack!1519)))
       ((_ to_fp 11 53) x0_ack!1519)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1514)
                       ((_ to_fp 11 53) x1_ack!1513))
               ((_ to_fp 11 53) x1_ack!1513))
       ((_ to_fp 11 53) x2_ack!1514)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1514)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1514)
                       ((_ to_fp 11 53) x1_ack!1513)))
       ((_ to_fp 11 53) x1_ack!1513)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1513)
                    ((_ to_fp 11 53) x0_ack!1519))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1514)
                    ((_ to_fp 11 53) x1_ack!1513))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1518) ((_ to_fp 11 53) x0_ack!1519))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1518) ((_ to_fp 11 53) x2_ack!1514))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1518) ((_ to_fp 11 53) x0_ack!1519))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1518) ((_ to_fp 11 53) x1_ack!1513)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1513) ((_ to_fp 11 53) xx_ack!1518))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1514)
               ((_ to_fp 11 53) x1_ack!1513))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1517)
                           ((_ to_fp 11 53) y1_ack!1516))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1514)
                                   ((_ to_fp 11 53) x1_ack!1513)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1516)
                           ((_ to_fp 11 53) y0_ack!1515))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1513)
                                   ((_ to_fp 11 53) x0_ack!1519)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1514)
                                   ((_ to_fp 11 53) x1_ack!1513))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1513)
                                   ((_ to_fp 11 53) x0_ack!1519))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
