(declare-fun x1_ack!1736 () (_ BitVec 64))
(declare-fun x0_ack!1742 () (_ BitVec 64))
(declare-fun x2_ack!1737 () (_ BitVec 64))
(declare-fun xx_ack!1741 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1738 () (_ BitVec 64))
(declare-fun y1_ack!1739 () (_ BitVec 64))
(declare-fun y2_ack!1740 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1742) ((_ to_fp 11 53) x1_ack!1736)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1736) ((_ to_fp 11 53) x2_ack!1737)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1736)
                       ((_ to_fp 11 53) x0_ack!1742))
               ((_ to_fp 11 53) x0_ack!1742))
       ((_ to_fp 11 53) x1_ack!1736)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1736)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1736)
                       ((_ to_fp 11 53) x0_ack!1742)))
       ((_ to_fp 11 53) x0_ack!1742)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1737)
                       ((_ to_fp 11 53) x1_ack!1736))
               ((_ to_fp 11 53) x1_ack!1736))
       ((_ to_fp 11 53) x2_ack!1737)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1737)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1737)
                       ((_ to_fp 11 53) x1_ack!1736)))
       ((_ to_fp 11 53) x1_ack!1736)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1736)
                    ((_ to_fp 11 53) x0_ack!1742))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1737)
                    ((_ to_fp 11 53) x1_ack!1736))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1741) ((_ to_fp 11 53) x0_ack!1742))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1741) ((_ to_fp 11 53) x2_ack!1737))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1741) ((_ to_fp 11 53) x0_ack!1742))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1741) ((_ to_fp 11 53) x1_ack!1736)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1736) ((_ to_fp 11 53) xx_ack!1741))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1737)
               ((_ to_fp 11 53) x1_ack!1736))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1740)
                           ((_ to_fp 11 53) y1_ack!1739))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1737)
                                   ((_ to_fp 11 53) x1_ack!1736)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1739)
                           ((_ to_fp 11 53) y0_ack!1738))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1736)
                                   ((_ to_fp 11 53) x0_ack!1742)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1737)
                                   ((_ to_fp 11 53) x1_ack!1736))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1736)
                                   ((_ to_fp 11 53) x0_ack!1742))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!1737)
                           ((_ to_fp 11 53) x1_ack!1736))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1737)
                                   ((_ to_fp 11 53) x1_ack!1736))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!1740)
                                   ((_ to_fp 11 53) y1_ack!1739))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1737)
                                   ((_ to_fp 11 53) x1_ack!1736)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1741)
                                   ((_ to_fp 11 53) x1_ack!1736))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1741)
                                   ((_ to_fp 11 53) x1_ack!1736))
                           a!8))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!1741)
            ((_ to_fp 11 53) x1_ack!1736))
    a!9)))))))

(check-sat)
(exit)
