(declare-fun x1_ack!1651 () (_ BitVec 64))
(declare-fun x0_ack!1657 () (_ BitVec 64))
(declare-fun x2_ack!1652 () (_ BitVec 64))
(declare-fun xx_ack!1656 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1653 () (_ BitVec 64))
(declare-fun y1_ack!1654 () (_ BitVec 64))
(declare-fun y2_ack!1655 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1657) ((_ to_fp 11 53) x1_ack!1651)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1651) ((_ to_fp 11 53) x2_ack!1652)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1651)
                       ((_ to_fp 11 53) x0_ack!1657))
               ((_ to_fp 11 53) x0_ack!1657))
       ((_ to_fp 11 53) x1_ack!1651)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1651)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1651)
                       ((_ to_fp 11 53) x0_ack!1657)))
       ((_ to_fp 11 53) x0_ack!1657)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1652)
                       ((_ to_fp 11 53) x1_ack!1651))
               ((_ to_fp 11 53) x1_ack!1651))
       ((_ to_fp 11 53) x2_ack!1652)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1652)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1652)
                       ((_ to_fp 11 53) x1_ack!1651)))
       ((_ to_fp 11 53) x1_ack!1651)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1651)
                    ((_ to_fp 11 53) x0_ack!1657))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1652)
                    ((_ to_fp 11 53) x1_ack!1651))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1656) ((_ to_fp 11 53) x0_ack!1657))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1656) ((_ to_fp 11 53) x2_ack!1652))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1656) ((_ to_fp 11 53) x0_ack!1657))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1656) ((_ to_fp 11 53) x1_ack!1651)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1651) ((_ to_fp 11 53) xx_ack!1656))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1652)
               ((_ to_fp 11 53) x1_ack!1651))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1655)
                           ((_ to_fp 11 53) y1_ack!1654))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1652)
                                   ((_ to_fp 11 53) x1_ack!1651)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1654)
                           ((_ to_fp 11 53) y0_ack!1653))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1651)
                                   ((_ to_fp 11 53) x0_ack!1657)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1652)
                                   ((_ to_fp 11 53) x1_ack!1651))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1651)
                                   ((_ to_fp 11 53) x0_ack!1657))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1652)
                                   ((_ to_fp 11 53) x1_ack!1651))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!4)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    a!5)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!1656)
                    ((_ to_fp 11 53) x1_ack!1651))))))))

(check-sat)
(exit)
