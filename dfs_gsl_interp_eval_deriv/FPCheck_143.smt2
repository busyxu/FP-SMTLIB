(declare-fun x1_ack!1631 () (_ BitVec 64))
(declare-fun x0_ack!1637 () (_ BitVec 64))
(declare-fun x2_ack!1632 () (_ BitVec 64))
(declare-fun xx_ack!1636 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1633 () (_ BitVec 64))
(declare-fun y1_ack!1634 () (_ BitVec 64))
(declare-fun y2_ack!1635 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1637) ((_ to_fp 11 53) x1_ack!1631)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1631) ((_ to_fp 11 53) x2_ack!1632)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1631)
                       ((_ to_fp 11 53) x0_ack!1637))
               ((_ to_fp 11 53) x0_ack!1637))
       ((_ to_fp 11 53) x1_ack!1631)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1631)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1631)
                       ((_ to_fp 11 53) x0_ack!1637)))
       ((_ to_fp 11 53) x0_ack!1637)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1632)
                       ((_ to_fp 11 53) x1_ack!1631))
               ((_ to_fp 11 53) x1_ack!1631))
       ((_ to_fp 11 53) x2_ack!1632)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1632)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1632)
                       ((_ to_fp 11 53) x1_ack!1631)))
       ((_ to_fp 11 53) x1_ack!1631)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1631)
                    ((_ to_fp 11 53) x0_ack!1637))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1632)
                    ((_ to_fp 11 53) x1_ack!1631))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1636) ((_ to_fp 11 53) x0_ack!1637))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1636) ((_ to_fp 11 53) x2_ack!1632))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1636) ((_ to_fp 11 53) x0_ack!1637))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!1636) ((_ to_fp 11 53) x1_ack!1631))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1631)
               ((_ to_fp 11 53) x0_ack!1637))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1635)
                           ((_ to_fp 11 53) y1_ack!1634))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1632)
                                   ((_ to_fp 11 53) x1_ack!1631)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1634)
                           ((_ to_fp 11 53) y0_ack!1633))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1631)
                                   ((_ to_fp 11 53) x0_ack!1637)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1632)
                                   ((_ to_fp 11 53) x1_ack!1631))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1631)
                                   ((_ to_fp 11 53) x0_ack!1637))))))
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
                                   ((_ to_fp 11 53) x1_ack!1631)
                                   ((_ to_fp 11 53) x0_ack!1637))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4008000000000000) a!5)
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!1636)
            ((_ to_fp 11 53) x0_ack!1637)))))))

(check-sat)
(exit)
