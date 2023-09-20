(declare-fun x1_ack!1596 () (_ BitVec 64))
(declare-fun x0_ack!1602 () (_ BitVec 64))
(declare-fun x2_ack!1597 () (_ BitVec 64))
(declare-fun xx_ack!1601 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1598 () (_ BitVec 64))
(declare-fun y1_ack!1599 () (_ BitVec 64))
(declare-fun y2_ack!1600 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1602) ((_ to_fp 11 53) x1_ack!1596)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1596) ((_ to_fp 11 53) x2_ack!1597)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1596)
                       ((_ to_fp 11 53) x0_ack!1602))
               ((_ to_fp 11 53) x0_ack!1602))
       ((_ to_fp 11 53) x1_ack!1596)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1596)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1596)
                       ((_ to_fp 11 53) x0_ack!1602)))
       ((_ to_fp 11 53) x0_ack!1602)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1597)
                       ((_ to_fp 11 53) x1_ack!1596))
               ((_ to_fp 11 53) x1_ack!1596))
       ((_ to_fp 11 53) x2_ack!1597)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1597)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1597)
                       ((_ to_fp 11 53) x1_ack!1596)))
       ((_ to_fp 11 53) x1_ack!1596)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1596)
                    ((_ to_fp 11 53) x0_ack!1602))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1597)
                    ((_ to_fp 11 53) x1_ack!1596))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1601) ((_ to_fp 11 53) x0_ack!1602))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1601) ((_ to_fp 11 53) x2_ack!1597))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1601) ((_ to_fp 11 53) x0_ack!1602))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1601) ((_ to_fp 11 53) x1_ack!1596))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1596)
               ((_ to_fp 11 53) x0_ack!1602))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1600)
                           ((_ to_fp 11 53) y1_ack!1599))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1597)
                                   ((_ to_fp 11 53) x1_ack!1596)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1599)
                           ((_ to_fp 11 53) y0_ack!1598))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1596)
                                   ((_ to_fp 11 53) x0_ack!1602)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1597)
                                   ((_ to_fp 11 53) x1_ack!1596))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1596)
                                   ((_ to_fp 11 53) x0_ack!1602))))))
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
                                   ((_ to_fp 11 53) x1_ack!1596)
                                   ((_ to_fp 11 53) x0_ack!1602))))))
  (FPCHECK_FADD_OVERFLOW
    #x0000000000000000
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!1601)
                    ((_ to_fp 11 53) x0_ack!1602))
            a!5))))))

(check-sat)
(exit)
