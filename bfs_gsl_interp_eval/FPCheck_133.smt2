(declare-fun x1_ack!1464 () (_ BitVec 64))
(declare-fun x0_ack!1470 () (_ BitVec 64))
(declare-fun x2_ack!1465 () (_ BitVec 64))
(declare-fun xx_ack!1469 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1466 () (_ BitVec 64))
(declare-fun y1_ack!1467 () (_ BitVec 64))
(declare-fun y2_ack!1468 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1470) ((_ to_fp 11 53) x1_ack!1464)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1464) ((_ to_fp 11 53) x2_ack!1465)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1464)
                       ((_ to_fp 11 53) x0_ack!1470))
               ((_ to_fp 11 53) x0_ack!1470))
       ((_ to_fp 11 53) x1_ack!1464)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1464)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1464)
                       ((_ to_fp 11 53) x0_ack!1470)))
       ((_ to_fp 11 53) x0_ack!1470)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1465)
                       ((_ to_fp 11 53) x1_ack!1464))
               ((_ to_fp 11 53) x1_ack!1464))
       ((_ to_fp 11 53) x2_ack!1465)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1465)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1465)
                       ((_ to_fp 11 53) x1_ack!1464)))
       ((_ to_fp 11 53) x1_ack!1464)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1464)
                    ((_ to_fp 11 53) x0_ack!1470))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1465)
                    ((_ to_fp 11 53) x1_ack!1464))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1469) ((_ to_fp 11 53) x0_ack!1470))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1469) ((_ to_fp 11 53) x2_ack!1465))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1469) ((_ to_fp 11 53) x0_ack!1470))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1469) ((_ to_fp 11 53) x1_ack!1464)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1464) ((_ to_fp 11 53) xx_ack!1469))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1465)
               ((_ to_fp 11 53) x1_ack!1464))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1468)
                           ((_ to_fp 11 53) y1_ack!1467))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1465)
                                   ((_ to_fp 11 53) x1_ack!1464)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1467)
                           ((_ to_fp 11 53) y0_ack!1466))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1464)
                                   ((_ to_fp 11 53) x0_ack!1470)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1465)
                                   ((_ to_fp 11 53) x1_ack!1464))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1464)
                                   ((_ to_fp 11 53) x0_ack!1470))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_OVERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1465)
                    ((_ to_fp 11 53) x1_ack!1464)))))))

(check-sat)
(exit)
