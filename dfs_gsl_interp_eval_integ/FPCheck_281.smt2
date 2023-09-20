(declare-fun x1_ack!3391 () (_ BitVec 64))
(declare-fun x0_ack!3398 () (_ BitVec 64))
(declare-fun x2_ack!3392 () (_ BitVec 64))
(declare-fun b_ack!3397 () (_ BitVec 64))
(declare-fun a_ack!3396 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!3393 () (_ BitVec 64))
(declare-fun y1_ack!3394 () (_ BitVec 64))
(declare-fun y2_ack!3395 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3398) ((_ to_fp 11 53) x1_ack!3391)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3391) ((_ to_fp 11 53) x2_ack!3392)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3391)
                       ((_ to_fp 11 53) x0_ack!3398))
               ((_ to_fp 11 53) x0_ack!3398))
       ((_ to_fp 11 53) x1_ack!3391)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3391)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3391)
                       ((_ to_fp 11 53) x0_ack!3398)))
       ((_ to_fp 11 53) x0_ack!3398)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3392)
                       ((_ to_fp 11 53) x1_ack!3391))
               ((_ to_fp 11 53) x1_ack!3391))
       ((_ to_fp 11 53) x2_ack!3392)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3392)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3392)
                       ((_ to_fp 11 53) x1_ack!3391)))
       ((_ to_fp 11 53) x1_ack!3391)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3391)
                    ((_ to_fp 11 53) x0_ack!3398))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3392)
                    ((_ to_fp 11 53) x1_ack!3391))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3396) ((_ to_fp 11 53) b_ack!3397))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3396) ((_ to_fp 11 53) x0_ack!3398))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3397) ((_ to_fp 11 53) x2_ack!3392))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3396) ((_ to_fp 11 53) b_ack!3397))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3396) ((_ to_fp 11 53) x0_ack!3398))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3396) ((_ to_fp 11 53) x1_ack!3391))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3397) ((_ to_fp 11 53) x0_ack!3398))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3397) ((_ to_fp 11 53) x1_ack!3391))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3391)
                    ((_ to_fp 11 53) x0_ack!3398))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3395)
                           ((_ to_fp 11 53) y1_ack!3394))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3392)
                                   ((_ to_fp 11 53) x1_ack!3391)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3394)
                           ((_ to_fp 11 53) y0_ack!3393))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3391)
                                   ((_ to_fp 11 53) x0_ack!3398)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3392)
                                   ((_ to_fp 11 53) x1_ack!3391))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3391)
                                   ((_ to_fp 11 53) x0_ack!3398))))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
