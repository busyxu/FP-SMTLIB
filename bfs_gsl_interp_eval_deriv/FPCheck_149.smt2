(declare-fun x1_ack!1704 () (_ BitVec 64))
(declare-fun x0_ack!1710 () (_ BitVec 64))
(declare-fun x2_ack!1705 () (_ BitVec 64))
(declare-fun xx_ack!1709 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1706 () (_ BitVec 64))
(declare-fun y1_ack!1707 () (_ BitVec 64))
(declare-fun y2_ack!1708 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1710) ((_ to_fp 11 53) x1_ack!1704)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1704) ((_ to_fp 11 53) x2_ack!1705)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1704)
                       ((_ to_fp 11 53) x0_ack!1710))
               ((_ to_fp 11 53) x0_ack!1710))
       ((_ to_fp 11 53) x1_ack!1704)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1704)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1704)
                       ((_ to_fp 11 53) x0_ack!1710)))
       ((_ to_fp 11 53) x0_ack!1710)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1705)
                       ((_ to_fp 11 53) x1_ack!1704))
               ((_ to_fp 11 53) x1_ack!1704))
       ((_ to_fp 11 53) x2_ack!1705)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1705)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1705)
                       ((_ to_fp 11 53) x1_ack!1704)))
       ((_ to_fp 11 53) x1_ack!1704)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1704)
                    ((_ to_fp 11 53) x0_ack!1710))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1705)
                    ((_ to_fp 11 53) x1_ack!1704))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1709) ((_ to_fp 11 53) x0_ack!1710))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1709) ((_ to_fp 11 53) x2_ack!1705))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1709) ((_ to_fp 11 53) x0_ack!1710))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1709) ((_ to_fp 11 53) x1_ack!1704)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1704) ((_ to_fp 11 53) xx_ack!1709))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1705)
               ((_ to_fp 11 53) x1_ack!1704))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1708)
                           ((_ to_fp 11 53) y1_ack!1707))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1705)
                                   ((_ to_fp 11 53) x1_ack!1704)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1707)
                           ((_ to_fp 11 53) y0_ack!1706))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1704)
                                   ((_ to_fp 11 53) x0_ack!1710)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1705)
                                   ((_ to_fp 11 53) x1_ack!1704))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1704)
                                   ((_ to_fp 11 53) x0_ack!1710))))))
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
                                   ((_ to_fp 11 53) x2_ack!1705)
                                   ((_ to_fp 11 53) x1_ack!1704))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   a!5)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1709)
                                   ((_ to_fp 11 53) x1_ack!1704))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!1709)
            ((_ to_fp 11 53) x1_ack!1704))
    a!6))))))

(check-sat)
(exit)
