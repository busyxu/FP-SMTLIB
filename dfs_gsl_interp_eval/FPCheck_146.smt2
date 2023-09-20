(declare-fun x1_ack!1659 () (_ BitVec 64))
(declare-fun x0_ack!1665 () (_ BitVec 64))
(declare-fun x2_ack!1660 () (_ BitVec 64))
(declare-fun xx_ack!1664 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1661 () (_ BitVec 64))
(declare-fun y1_ack!1662 () (_ BitVec 64))
(declare-fun y2_ack!1663 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1665) ((_ to_fp 11 53) x1_ack!1659)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1659) ((_ to_fp 11 53) x2_ack!1660)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1659)
                       ((_ to_fp 11 53) x0_ack!1665))
               ((_ to_fp 11 53) x0_ack!1665))
       ((_ to_fp 11 53) x1_ack!1659)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1659)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1659)
                       ((_ to_fp 11 53) x0_ack!1665)))
       ((_ to_fp 11 53) x0_ack!1665)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1660)
                       ((_ to_fp 11 53) x1_ack!1659))
               ((_ to_fp 11 53) x1_ack!1659))
       ((_ to_fp 11 53) x2_ack!1660)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1660)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1660)
                       ((_ to_fp 11 53) x1_ack!1659)))
       ((_ to_fp 11 53) x1_ack!1659)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1659)
                    ((_ to_fp 11 53) x0_ack!1665))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1660)
                    ((_ to_fp 11 53) x1_ack!1659))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1664) ((_ to_fp 11 53) x0_ack!1665))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1664) ((_ to_fp 11 53) x2_ack!1660))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1664) ((_ to_fp 11 53) x0_ack!1665))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1664) ((_ to_fp 11 53) x1_ack!1659))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1659)
               ((_ to_fp 11 53) x0_ack!1665))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1663)
                           ((_ to_fp 11 53) y1_ack!1662))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1660)
                                   ((_ to_fp 11 53) x1_ack!1659)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1662)
                           ((_ to_fp 11 53) y0_ack!1661))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1659)
                                   ((_ to_fp 11 53) x0_ack!1665)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1660)
                                   ((_ to_fp 11 53) x1_ack!1659))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1659)
                                   ((_ to_fp 11 53) x0_ack!1665))))))
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
                                   ((_ to_fp 11 53) x1_ack!1659)
                                   ((_ to_fp 11 53) x0_ack!1665))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1664)
                                   ((_ to_fp 11 53) x0_ack!1665))
                           a!5))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!1664)
            ((_ to_fp 11 53) x0_ack!1665))
    a!6))))))

(check-sat)
(exit)
