(declare-fun x1_ack!1708 () (_ BitVec 64))
(declare-fun x0_ack!1714 () (_ BitVec 64))
(declare-fun x2_ack!1709 () (_ BitVec 64))
(declare-fun xx_ack!1713 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1710 () (_ BitVec 64))
(declare-fun y1_ack!1711 () (_ BitVec 64))
(declare-fun y2_ack!1712 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1714) ((_ to_fp 11 53) x1_ack!1708)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1708) ((_ to_fp 11 53) x2_ack!1709)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1708)
                       ((_ to_fp 11 53) x0_ack!1714))
               ((_ to_fp 11 53) x0_ack!1714))
       ((_ to_fp 11 53) x1_ack!1708)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1708)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1708)
                       ((_ to_fp 11 53) x0_ack!1714)))
       ((_ to_fp 11 53) x0_ack!1714)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1709)
                       ((_ to_fp 11 53) x1_ack!1708))
               ((_ to_fp 11 53) x1_ack!1708))
       ((_ to_fp 11 53) x2_ack!1709)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1709)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1709)
                       ((_ to_fp 11 53) x1_ack!1708)))
       ((_ to_fp 11 53) x1_ack!1708)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1708)
                    ((_ to_fp 11 53) x0_ack!1714))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1709)
                    ((_ to_fp 11 53) x1_ack!1708))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1713) ((_ to_fp 11 53) x0_ack!1714))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1713) ((_ to_fp 11 53) x2_ack!1709))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1713) ((_ to_fp 11 53) x0_ack!1714))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1713) ((_ to_fp 11 53) x1_ack!1708)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1708) ((_ to_fp 11 53) xx_ack!1713))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1709)
               ((_ to_fp 11 53) x1_ack!1708))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1712)
                           ((_ to_fp 11 53) y1_ack!1711))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1709)
                                   ((_ to_fp 11 53) x1_ack!1708)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1711)
                           ((_ to_fp 11 53) y0_ack!1710))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1708)
                                   ((_ to_fp 11 53) x0_ack!1714)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1709)
                                   ((_ to_fp 11 53) x1_ack!1708))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1708)
                                   ((_ to_fp 11 53) x0_ack!1714))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!1709)
                           ((_ to_fp 11 53) x1_ack!1708))
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
                                   ((_ to_fp 11 53) x2_ack!1709)
                                   ((_ to_fp 11 53) x1_ack!1708))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!1712)
                                   ((_ to_fp 11 53) y1_ack!1711))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1709)
                                   ((_ to_fp 11 53) x1_ack!1708)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1713)
                                   ((_ to_fp 11 53) x1_ack!1708))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1713)
                                   ((_ to_fp 11 53) x1_ack!1708))
                           a!8))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!1713)
            ((_ to_fp 11 53) x1_ack!1708))
    a!9)))))))

(check-sat)
(exit)
