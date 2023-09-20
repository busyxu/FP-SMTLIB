(declare-fun x1_ack!5560 () (_ BitVec 64))
(declare-fun x0_ack!5567 () (_ BitVec 64))
(declare-fun x2_ack!5561 () (_ BitVec 64))
(declare-fun b_ack!5566 () (_ BitVec 64))
(declare-fun a_ack!5565 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!5562 () (_ BitVec 64))
(declare-fun y1_ack!5563 () (_ BitVec 64))
(declare-fun y2_ack!5564 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5567) ((_ to_fp 11 53) x1_ack!5560)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5560) ((_ to_fp 11 53) x2_ack!5561)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5560)
                       ((_ to_fp 11 53) x0_ack!5567))
               ((_ to_fp 11 53) x0_ack!5567))
       ((_ to_fp 11 53) x1_ack!5560)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5560)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5560)
                       ((_ to_fp 11 53) x0_ack!5567)))
       ((_ to_fp 11 53) x0_ack!5567)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5561)
                       ((_ to_fp 11 53) x1_ack!5560))
               ((_ to_fp 11 53) x1_ack!5560))
       ((_ to_fp 11 53) x2_ack!5561)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5561)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5561)
                       ((_ to_fp 11 53) x1_ack!5560)))
       ((_ to_fp 11 53) x1_ack!5560)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5560)
                    ((_ to_fp 11 53) x0_ack!5567))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5561)
                    ((_ to_fp 11 53) x1_ack!5560))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5565) ((_ to_fp 11 53) b_ack!5566))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5565) ((_ to_fp 11 53) x0_ack!5567))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5566) ((_ to_fp 11 53) x2_ack!5561))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5565) ((_ to_fp 11 53) b_ack!5566))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5565) ((_ to_fp 11 53) x0_ack!5567))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5565) ((_ to_fp 11 53) x1_ack!5560))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5566) ((_ to_fp 11 53) x0_ack!5567))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5566) ((_ to_fp 11 53) x1_ack!5560)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5560) ((_ to_fp 11 53) b_ack!5566))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5560)
                    ((_ to_fp 11 53) x0_ack!5567))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5564)
                           ((_ to_fp 11 53) y1_ack!5563))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5561)
                                   ((_ to_fp 11 53) x1_ack!5560)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5563)
                           ((_ to_fp 11 53) y0_ack!5562))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5560)
                                   ((_ to_fp 11 53) x0_ack!5567)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5561)
                                   ((_ to_fp 11 53) x1_ack!5560))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5560)
                                   ((_ to_fp 11 53) x0_ack!5567))))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
