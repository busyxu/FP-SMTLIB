(declare-fun x1_ack!3407 () (_ BitVec 64))
(declare-fun x0_ack!3414 () (_ BitVec 64))
(declare-fun x2_ack!3408 () (_ BitVec 64))
(declare-fun b_ack!3413 () (_ BitVec 64))
(declare-fun a_ack!3412 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!3409 () (_ BitVec 64))
(declare-fun y1_ack!3410 () (_ BitVec 64))
(declare-fun y2_ack!3411 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3414) ((_ to_fp 11 53) x1_ack!3407)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3407) ((_ to_fp 11 53) x2_ack!3408)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3407)
                       ((_ to_fp 11 53) x0_ack!3414))
               ((_ to_fp 11 53) x0_ack!3414))
       ((_ to_fp 11 53) x1_ack!3407)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3407)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3407)
                       ((_ to_fp 11 53) x0_ack!3414)))
       ((_ to_fp 11 53) x0_ack!3414)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3408)
                       ((_ to_fp 11 53) x1_ack!3407))
               ((_ to_fp 11 53) x1_ack!3407))
       ((_ to_fp 11 53) x2_ack!3408)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3408)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3408)
                       ((_ to_fp 11 53) x1_ack!3407)))
       ((_ to_fp 11 53) x1_ack!3407)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3407)
                    ((_ to_fp 11 53) x0_ack!3414))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3408)
                    ((_ to_fp 11 53) x1_ack!3407))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3412) ((_ to_fp 11 53) b_ack!3413))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3412) ((_ to_fp 11 53) x0_ack!3414))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3413) ((_ to_fp 11 53) x2_ack!3408))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3412) ((_ to_fp 11 53) b_ack!3413))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3412) ((_ to_fp 11 53) x0_ack!3414))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3412) ((_ to_fp 11 53) x1_ack!3407))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3413) ((_ to_fp 11 53) x0_ack!3414))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3413) ((_ to_fp 11 53) x1_ack!3407))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3407)
                    ((_ to_fp 11 53) x0_ack!3414))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3411)
                           ((_ to_fp 11 53) y1_ack!3410))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3408)
                                   ((_ to_fp 11 53) x1_ack!3407)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3410)
                           ((_ to_fp 11 53) y0_ack!3409))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3407)
                                   ((_ to_fp 11 53) x0_ack!3414)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3408)
                                   ((_ to_fp 11 53) x1_ack!3407))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3407)
                                   ((_ to_fp 11 53) x0_ack!3414))))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3)
    #x0000000000000000)))

(check-sat)
(exit)
