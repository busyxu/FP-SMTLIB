(declare-fun x1_ack!1624 () (_ BitVec 64))
(declare-fun x0_ack!1630 () (_ BitVec 64))
(declare-fun x2_ack!1625 () (_ BitVec 64))
(declare-fun xx_ack!1629 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1626 () (_ BitVec 64))
(declare-fun y1_ack!1627 () (_ BitVec 64))
(declare-fun y2_ack!1628 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1630) ((_ to_fp 11 53) x1_ack!1624)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1624) ((_ to_fp 11 53) x2_ack!1625)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1624)
                       ((_ to_fp 11 53) x0_ack!1630))
               ((_ to_fp 11 53) x0_ack!1630))
       ((_ to_fp 11 53) x1_ack!1624)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1624)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1624)
                       ((_ to_fp 11 53) x0_ack!1630)))
       ((_ to_fp 11 53) x0_ack!1630)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1625)
                       ((_ to_fp 11 53) x1_ack!1624))
               ((_ to_fp 11 53) x1_ack!1624))
       ((_ to_fp 11 53) x2_ack!1625)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1625)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1625)
                       ((_ to_fp 11 53) x1_ack!1624)))
       ((_ to_fp 11 53) x1_ack!1624)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1624)
                    ((_ to_fp 11 53) x0_ack!1630))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1625)
                    ((_ to_fp 11 53) x1_ack!1624))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1629) ((_ to_fp 11 53) x0_ack!1630))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1629) ((_ to_fp 11 53) x2_ack!1625))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1629) ((_ to_fp 11 53) x0_ack!1630))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1629) ((_ to_fp 11 53) x1_ack!1624))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1624)
               ((_ to_fp 11 53) x0_ack!1630))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1628)
                           ((_ to_fp 11 53) y1_ack!1627))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1625)
                                   ((_ to_fp 11 53) x1_ack!1624)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1627)
                           ((_ to_fp 11 53) y0_ack!1626))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1624)
                                   ((_ to_fp 11 53) x0_ack!1630)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1625)
                                   ((_ to_fp 11 53) x1_ack!1624))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1624)
                                   ((_ to_fp 11 53) x0_ack!1630))))))
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
                                   ((_ to_fp 11 53) x1_ack!1624)
                                   ((_ to_fp 11 53) x0_ack!1630))))))
  (FPCHECK_FADD_ACCURACY
    #x0000000000000000
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!1629)
                    ((_ to_fp 11 53) x0_ack!1630))
            a!5))))))

(check-sat)
(exit)
