(declare-fun x1_ack!1750 () (_ BitVec 64))
(declare-fun x0_ack!1756 () (_ BitVec 64))
(declare-fun x2_ack!1751 () (_ BitVec 64))
(declare-fun xx_ack!1755 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1752 () (_ BitVec 64))
(declare-fun y1_ack!1753 () (_ BitVec 64))
(declare-fun y2_ack!1754 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1756) ((_ to_fp 11 53) x1_ack!1750)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1750) ((_ to_fp 11 53) x2_ack!1751)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1750)
                       ((_ to_fp 11 53) x0_ack!1756))
               ((_ to_fp 11 53) x0_ack!1756))
       ((_ to_fp 11 53) x1_ack!1750)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1750)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1750)
                       ((_ to_fp 11 53) x0_ack!1756)))
       ((_ to_fp 11 53) x0_ack!1756)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1751)
                       ((_ to_fp 11 53) x1_ack!1750))
               ((_ to_fp 11 53) x1_ack!1750))
       ((_ to_fp 11 53) x2_ack!1751)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1751)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1751)
                       ((_ to_fp 11 53) x1_ack!1750)))
       ((_ to_fp 11 53) x1_ack!1750)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1750)
                    ((_ to_fp 11 53) x0_ack!1756))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1751)
                    ((_ to_fp 11 53) x1_ack!1750))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1755) ((_ to_fp 11 53) x0_ack!1756))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1755) ((_ to_fp 11 53) x2_ack!1751))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1755) ((_ to_fp 11 53) x0_ack!1756))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1755) ((_ to_fp 11 53) x1_ack!1750)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1750) ((_ to_fp 11 53) xx_ack!1755))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1751)
               ((_ to_fp 11 53) x1_ack!1750))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1754)
                           ((_ to_fp 11 53) y1_ack!1753))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1751)
                                   ((_ to_fp 11 53) x1_ack!1750)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1753)
                           ((_ to_fp 11 53) y0_ack!1752))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1750)
                                   ((_ to_fp 11 53) x0_ack!1756)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1751)
                                   ((_ to_fp 11 53) x1_ack!1750))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1750)
                                   ((_ to_fp 11 53) x0_ack!1756))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!1751)
                           ((_ to_fp 11 53) x1_ack!1750))
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
                                   ((_ to_fp 11 53) x2_ack!1751)
                                   ((_ to_fp 11 53) x1_ack!1750))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!1754)
                                   ((_ to_fp 11 53) y1_ack!1753))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1751)
                                   ((_ to_fp 11 53) x1_ack!1750)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   a!7)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1755)
                                   ((_ to_fp 11 53) x1_ack!1750))))))
  (FPCHECK_FADD_ACCURACY
    a!6
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!1755)
                    ((_ to_fp 11 53) x1_ack!1750))
            a!8)))))))

(check-sat)
(exit)
