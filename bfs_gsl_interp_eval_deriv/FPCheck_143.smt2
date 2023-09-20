(declare-fun x1_ack!1619 () (_ BitVec 64))
(declare-fun x0_ack!1625 () (_ BitVec 64))
(declare-fun x2_ack!1620 () (_ BitVec 64))
(declare-fun xx_ack!1624 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1621 () (_ BitVec 64))
(declare-fun y1_ack!1622 () (_ BitVec 64))
(declare-fun y2_ack!1623 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1625) ((_ to_fp 11 53) x1_ack!1619)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1619) ((_ to_fp 11 53) x2_ack!1620)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1619)
                       ((_ to_fp 11 53) x0_ack!1625))
               ((_ to_fp 11 53) x0_ack!1625))
       ((_ to_fp 11 53) x1_ack!1619)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1619)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1619)
                       ((_ to_fp 11 53) x0_ack!1625)))
       ((_ to_fp 11 53) x0_ack!1625)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1620)
                       ((_ to_fp 11 53) x1_ack!1619))
               ((_ to_fp 11 53) x1_ack!1619))
       ((_ to_fp 11 53) x2_ack!1620)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1620)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1620)
                       ((_ to_fp 11 53) x1_ack!1619)))
       ((_ to_fp 11 53) x1_ack!1619)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1619)
                    ((_ to_fp 11 53) x0_ack!1625))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1620)
                    ((_ to_fp 11 53) x1_ack!1619))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1624) ((_ to_fp 11 53) x0_ack!1625))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1624) ((_ to_fp 11 53) x2_ack!1620))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1624) ((_ to_fp 11 53) x0_ack!1625))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1624) ((_ to_fp 11 53) x1_ack!1619)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1619) ((_ to_fp 11 53) xx_ack!1624))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1620)
               ((_ to_fp 11 53) x1_ack!1619))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1623)
                           ((_ to_fp 11 53) y1_ack!1622))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1620)
                                   ((_ to_fp 11 53) x1_ack!1619)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1622)
                           ((_ to_fp 11 53) y0_ack!1621))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1619)
                                   ((_ to_fp 11 53) x0_ack!1625)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1620)
                                   ((_ to_fp 11 53) x1_ack!1619))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1619)
                                   ((_ to_fp 11 53) x0_ack!1625))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1620)
                                   ((_ to_fp 11 53) x1_ack!1619))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4008000000000000) a!5)
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!1624)
            ((_ to_fp 11 53) x1_ack!1619)))))))

(check-sat)
(exit)
