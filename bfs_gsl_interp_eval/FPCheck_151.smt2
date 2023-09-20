(declare-fun x1_ack!1722 () (_ BitVec 64))
(declare-fun x0_ack!1728 () (_ BitVec 64))
(declare-fun x2_ack!1723 () (_ BitVec 64))
(declare-fun xx_ack!1727 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1724 () (_ BitVec 64))
(declare-fun y1_ack!1725 () (_ BitVec 64))
(declare-fun y2_ack!1726 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1728) ((_ to_fp 11 53) x1_ack!1722)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1722) ((_ to_fp 11 53) x2_ack!1723)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1722)
                       ((_ to_fp 11 53) x0_ack!1728))
               ((_ to_fp 11 53) x0_ack!1728))
       ((_ to_fp 11 53) x1_ack!1722)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1722)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1722)
                       ((_ to_fp 11 53) x0_ack!1728)))
       ((_ to_fp 11 53) x0_ack!1728)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1723)
                       ((_ to_fp 11 53) x1_ack!1722))
               ((_ to_fp 11 53) x1_ack!1722))
       ((_ to_fp 11 53) x2_ack!1723)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1723)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1723)
                       ((_ to_fp 11 53) x1_ack!1722)))
       ((_ to_fp 11 53) x1_ack!1722)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1722)
                    ((_ to_fp 11 53) x0_ack!1728))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1723)
                    ((_ to_fp 11 53) x1_ack!1722))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1727) ((_ to_fp 11 53) x0_ack!1728))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1727) ((_ to_fp 11 53) x2_ack!1723))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1727) ((_ to_fp 11 53) x0_ack!1728))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1727) ((_ to_fp 11 53) x1_ack!1722)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1722) ((_ to_fp 11 53) xx_ack!1727))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1723)
               ((_ to_fp 11 53) x1_ack!1722))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1726)
                           ((_ to_fp 11 53) y1_ack!1725))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1723)
                                   ((_ to_fp 11 53) x1_ack!1722)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1725)
                           ((_ to_fp 11 53) y0_ack!1724))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1722)
                                   ((_ to_fp 11 53) x0_ack!1728)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1723)
                                   ((_ to_fp 11 53) x1_ack!1722))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1722)
                                   ((_ to_fp 11 53) x0_ack!1728))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!1723)
                           ((_ to_fp 11 53) x1_ack!1722))
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
                                   ((_ to_fp 11 53) x2_ack!1723)
                                   ((_ to_fp 11 53) x1_ack!1722))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!1726)
                                   ((_ to_fp 11 53) y1_ack!1725))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1723)
                                   ((_ to_fp 11 53) x1_ack!1722)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1727)
                                   ((_ to_fp 11 53) x1_ack!1722))
                           a!7))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) xx_ack!1727)
                                   ((_ to_fp 11 53) x1_ack!1722))
                           a!8))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) xx_ack!1727)
            ((_ to_fp 11 53) x1_ack!1722))
    a!9)))))))

(check-sat)
(exit)
