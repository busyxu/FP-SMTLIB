(declare-fun x1_ack!6272 () (_ BitVec 64))
(declare-fun x0_ack!6279 () (_ BitVec 64))
(declare-fun x2_ack!6273 () (_ BitVec 64))
(declare-fun b_ack!6278 () (_ BitVec 64))
(declare-fun a_ack!6277 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6274 () (_ BitVec 64))
(declare-fun y1_ack!6275 () (_ BitVec 64))
(declare-fun y2_ack!6276 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6279) ((_ to_fp 11 53) x1_ack!6272)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6272) ((_ to_fp 11 53) x2_ack!6273)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6272)
                       ((_ to_fp 11 53) x0_ack!6279))
               ((_ to_fp 11 53) x0_ack!6279))
       ((_ to_fp 11 53) x1_ack!6272)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6272)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6272)
                       ((_ to_fp 11 53) x0_ack!6279)))
       ((_ to_fp 11 53) x0_ack!6279)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6273)
                       ((_ to_fp 11 53) x1_ack!6272))
               ((_ to_fp 11 53) x1_ack!6272))
       ((_ to_fp 11 53) x2_ack!6273)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6273)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6273)
                       ((_ to_fp 11 53) x1_ack!6272)))
       ((_ to_fp 11 53) x1_ack!6272)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6272)
                    ((_ to_fp 11 53) x0_ack!6279))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6273)
                    ((_ to_fp 11 53) x1_ack!6272))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6277) ((_ to_fp 11 53) b_ack!6278))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6277) ((_ to_fp 11 53) x0_ack!6279))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6278) ((_ to_fp 11 53) x2_ack!6273))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6277) ((_ to_fp 11 53) b_ack!6278))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6277) ((_ to_fp 11 53) x0_ack!6279))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6277) ((_ to_fp 11 53) x1_ack!6272)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6272) ((_ to_fp 11 53) a_ack!6277))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6278) ((_ to_fp 11 53) x1_ack!6272))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6278) ((_ to_fp 11 53) x2_ack!6273))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6273)
                    ((_ to_fp 11 53) x1_ack!6272))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6276)
                           ((_ to_fp 11 53) y1_ack!6275))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6273)
                                   ((_ to_fp 11 53) x1_ack!6272)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6275)
                           ((_ to_fp 11 53) y0_ack!6274))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6272)
                                   ((_ to_fp 11 53) x0_ack!6279)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6273)
                                   ((_ to_fp 11 53) x1_ack!6272))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6272)
                                   ((_ to_fp 11 53) x0_ack!6279))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_UNDERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6273)
                    ((_ to_fp 11 53) x1_ack!6272)))))))

(check-sat)
(exit)
