(declare-fun x1_ack!1637 () (_ BitVec 64))
(declare-fun x0_ack!1643 () (_ BitVec 64))
(declare-fun x2_ack!1638 () (_ BitVec 64))
(declare-fun xx_ack!1642 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1639 () (_ BitVec 64))
(declare-fun y1_ack!1640 () (_ BitVec 64))
(declare-fun y2_ack!1641 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1643) ((_ to_fp 11 53) x1_ack!1637)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1637) ((_ to_fp 11 53) x2_ack!1638)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1637)
                       ((_ to_fp 11 53) x0_ack!1643))
               ((_ to_fp 11 53) x0_ack!1643))
       ((_ to_fp 11 53) x1_ack!1637)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1637)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1637)
                       ((_ to_fp 11 53) x0_ack!1643)))
       ((_ to_fp 11 53) x0_ack!1643)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1638)
                       ((_ to_fp 11 53) x1_ack!1637))
               ((_ to_fp 11 53) x1_ack!1637))
       ((_ to_fp 11 53) x2_ack!1638)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1638)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1638)
                       ((_ to_fp 11 53) x1_ack!1637)))
       ((_ to_fp 11 53) x1_ack!1637)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1637)
                    ((_ to_fp 11 53) x0_ack!1643))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1638)
                    ((_ to_fp 11 53) x1_ack!1637))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1642) ((_ to_fp 11 53) x0_ack!1643))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1642) ((_ to_fp 11 53) x2_ack!1638))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1642) ((_ to_fp 11 53) x0_ack!1643))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1642) ((_ to_fp 11 53) x1_ack!1637)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1637) ((_ to_fp 11 53) xx_ack!1642))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1638)
               ((_ to_fp 11 53) x1_ack!1637))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1641)
                           ((_ to_fp 11 53) y1_ack!1640))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1638)
                                   ((_ to_fp 11 53) x1_ack!1637)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1640)
                           ((_ to_fp 11 53) y0_ack!1639))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1637)
                                   ((_ to_fp 11 53) x0_ack!1643)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1638)
                                   ((_ to_fp 11 53) x1_ack!1637))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1637)
                                   ((_ to_fp 11 53) x0_ack!1643))))))
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
                                   ((_ to_fp 11 53) x2_ack!1638)
                                   ((_ to_fp 11 53) x1_ack!1637))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!4)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    a!5)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) xx_ack!1642)
                    ((_ to_fp 11 53) x1_ack!1637))))))))

(check-sat)
(exit)
