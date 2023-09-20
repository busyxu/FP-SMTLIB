(declare-fun x1_ack!722 () (_ BitVec 64))
(declare-fun x0_ack!728 () (_ BitVec 64))
(declare-fun x2_ack!723 () (_ BitVec 64))
(declare-fun xx_ack!727 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!724 () (_ BitVec 64))
(declare-fun y1_ack!725 () (_ BitVec 64))
(declare-fun y2_ack!726 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!728) ((_ to_fp 11 53) x1_ack!722)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!722) ((_ to_fp 11 53) x2_ack!723)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!722)
                       ((_ to_fp 11 53) x0_ack!728))
               ((_ to_fp 11 53) x0_ack!728))
       ((_ to_fp 11 53) x1_ack!722)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!722)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!722)
                       ((_ to_fp 11 53) x0_ack!728)))
       ((_ to_fp 11 53) x0_ack!728)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!723)
                       ((_ to_fp 11 53) x1_ack!722))
               ((_ to_fp 11 53) x1_ack!722))
       ((_ to_fp 11 53) x2_ack!723)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!723)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!723)
                       ((_ to_fp 11 53) x1_ack!722)))
       ((_ to_fp 11 53) x1_ack!722)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!722)
                    ((_ to_fp 11 53) x0_ack!728))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!723)
                    ((_ to_fp 11 53) x1_ack!722))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!727) ((_ to_fp 11 53) x0_ack!728))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!727) ((_ to_fp 11 53) x2_ack!723))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!727) ((_ to_fp 11 53) x0_ack!728))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!727) ((_ to_fp 11 53) x1_ack!722))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!722)
               ((_ to_fp 11 53) x0_ack!728))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!726)
                           ((_ to_fp 11 53) y1_ack!725))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!723)
                                   ((_ to_fp 11 53) x1_ack!722)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!725)
                           ((_ to_fp 11 53) y0_ack!724))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!722)
                                   ((_ to_fp 11 53) x0_ack!728)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!723)
                                   ((_ to_fp 11 53) x1_ack!722))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!722)
                                   ((_ to_fp 11 53) x0_ack!728))))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
