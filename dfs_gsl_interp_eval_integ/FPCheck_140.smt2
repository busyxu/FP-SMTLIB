(declare-fun x1_ack!1548 () (_ BitVec 64))
(declare-fun x0_ack!1555 () (_ BitVec 64))
(declare-fun x2_ack!1549 () (_ BitVec 64))
(declare-fun b_ack!1554 () (_ BitVec 64))
(declare-fun a_ack!1553 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1550 () (_ BitVec 64))
(declare-fun y1_ack!1551 () (_ BitVec 64))
(declare-fun y2_ack!1552 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1555) ((_ to_fp 11 53) x1_ack!1548)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1548) ((_ to_fp 11 53) x2_ack!1549)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1548)
                       ((_ to_fp 11 53) x0_ack!1555))
               ((_ to_fp 11 53) x0_ack!1555))
       ((_ to_fp 11 53) x1_ack!1548)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1548)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1548)
                       ((_ to_fp 11 53) x0_ack!1555)))
       ((_ to_fp 11 53) x0_ack!1555)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1549)
                       ((_ to_fp 11 53) x1_ack!1548))
               ((_ to_fp 11 53) x1_ack!1548))
       ((_ to_fp 11 53) x2_ack!1549)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1549)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1549)
                       ((_ to_fp 11 53) x1_ack!1548)))
       ((_ to_fp 11 53) x1_ack!1548)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1548)
                    ((_ to_fp 11 53) x0_ack!1555))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1549)
                    ((_ to_fp 11 53) x1_ack!1548))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1553) ((_ to_fp 11 53) b_ack!1554))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1553) ((_ to_fp 11 53) x0_ack!1555))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1554) ((_ to_fp 11 53) x2_ack!1549))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1553) ((_ to_fp 11 53) b_ack!1554))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1553) ((_ to_fp 11 53) x0_ack!1555))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1553) ((_ to_fp 11 53) x1_ack!1548))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1554) ((_ to_fp 11 53) x0_ack!1555))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1554) ((_ to_fp 11 53) x1_ack!1548)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1548) ((_ to_fp 11 53) b_ack!1554))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1548)
                    ((_ to_fp 11 53) x0_ack!1555))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1552)
                           ((_ to_fp 11 53) y1_ack!1551))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1549)
                                   ((_ to_fp 11 53) x1_ack!1548)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1551)
                           ((_ to_fp 11 53) y0_ack!1550))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1548)
                                   ((_ to_fp 11 53) x0_ack!1555)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1549)
                                   ((_ to_fp 11 53) x1_ack!1548))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1548)
                                   ((_ to_fp 11 53) x0_ack!1555)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1553)
                                   ((_ to_fp 11 53) x0_ack!1555))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1553)
                                   ((_ to_fp 11 53) x0_ack!1555)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1548)
                                   ((_ to_fp 11 53) x0_ack!1555))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1548)
                                   ((_ to_fp 11 53) x0_ack!1555))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1553)
                                   ((_ to_fp 11 53) x0_ack!1555))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1548)
                                   ((_ to_fp 11 53) x0_ack!1555))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1548)
                                   ((_ to_fp 11 53) x0_ack!1555))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!1551)
                                   ((_ to_fp 11 53) y0_ack!1550))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1548)
                                   ((_ to_fp 11 53) x0_ack!1555)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1553)
                                   ((_ to_fp 11 53) x0_ack!1555))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1548)
                                   ((_ to_fp 11 53) x0_ack!1555))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!1550) a!7)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!9))))))))

(check-sat)
(exit)
