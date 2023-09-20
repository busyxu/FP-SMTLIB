(declare-fun x1_ack!1538 () (_ BitVec 64))
(declare-fun x0_ack!1544 () (_ BitVec 64))
(declare-fun x2_ack!1539 () (_ BitVec 64))
(declare-fun xx_ack!1543 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1540 () (_ BitVec 64))
(declare-fun y1_ack!1541 () (_ BitVec 64))
(declare-fun y2_ack!1542 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1544) ((_ to_fp 11 53) x1_ack!1538)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1538) ((_ to_fp 11 53) x2_ack!1539)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1538)
                       ((_ to_fp 11 53) x0_ack!1544))
               ((_ to_fp 11 53) x0_ack!1544))
       ((_ to_fp 11 53) x1_ack!1538)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1538)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1538)
                       ((_ to_fp 11 53) x0_ack!1544)))
       ((_ to_fp 11 53) x0_ack!1544)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1539)
                       ((_ to_fp 11 53) x1_ack!1538))
               ((_ to_fp 11 53) x1_ack!1538))
       ((_ to_fp 11 53) x2_ack!1539)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1539)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1539)
                       ((_ to_fp 11 53) x1_ack!1538)))
       ((_ to_fp 11 53) x1_ack!1538)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1538)
                    ((_ to_fp 11 53) x0_ack!1544))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1539)
                    ((_ to_fp 11 53) x1_ack!1538))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1543) ((_ to_fp 11 53) x0_ack!1544))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1543) ((_ to_fp 11 53) x2_ack!1539))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1543) ((_ to_fp 11 53) x0_ack!1544))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1543) ((_ to_fp 11 53) x1_ack!1538)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1538) ((_ to_fp 11 53) xx_ack!1543))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1539)
               ((_ to_fp 11 53) x1_ack!1538))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1542)
                           ((_ to_fp 11 53) y1_ack!1541))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1539)
                                   ((_ to_fp 11 53) x1_ack!1538)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1541)
                           ((_ to_fp 11 53) y0_ack!1540))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1538)
                                   ((_ to_fp 11 53) x0_ack!1544)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1539)
                                   ((_ to_fp 11 53) x1_ack!1538))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1538)
                                   ((_ to_fp 11 53) x0_ack!1544))))))
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
                                   ((_ to_fp 11 53) x2_ack!1539)
                                   ((_ to_fp 11 53) x1_ack!1538))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!1543)
            ((_ to_fp 11 53) x1_ack!1538))
    a!5)))))

(check-sat)
(exit)
