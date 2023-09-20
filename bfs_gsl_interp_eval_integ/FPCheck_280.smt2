(declare-fun x1_ack!3409 () (_ BitVec 64))
(declare-fun x0_ack!3416 () (_ BitVec 64))
(declare-fun x2_ack!3410 () (_ BitVec 64))
(declare-fun b_ack!3415 () (_ BitVec 64))
(declare-fun a_ack!3414 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3411 () (_ BitVec 64))
(declare-fun y1_ack!3412 () (_ BitVec 64))
(declare-fun y2_ack!3413 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3416) ((_ to_fp 11 53) x1_ack!3409)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3409) ((_ to_fp 11 53) x2_ack!3410)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3409)
                       ((_ to_fp 11 53) x0_ack!3416))
               ((_ to_fp 11 53) x0_ack!3416))
       ((_ to_fp 11 53) x1_ack!3409)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3409)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3409)
                       ((_ to_fp 11 53) x0_ack!3416)))
       ((_ to_fp 11 53) x0_ack!3416)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3410)
                       ((_ to_fp 11 53) x1_ack!3409))
               ((_ to_fp 11 53) x1_ack!3409))
       ((_ to_fp 11 53) x2_ack!3410)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3410)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3410)
                       ((_ to_fp 11 53) x1_ack!3409)))
       ((_ to_fp 11 53) x1_ack!3409)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3409)
                    ((_ to_fp 11 53) x0_ack!3416))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3410)
                    ((_ to_fp 11 53) x1_ack!3409))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3414) ((_ to_fp 11 53) b_ack!3415))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3414) ((_ to_fp 11 53) x0_ack!3416))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3415) ((_ to_fp 11 53) x2_ack!3410))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3414) ((_ to_fp 11 53) b_ack!3415))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3414) ((_ to_fp 11 53) x0_ack!3416))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3414) ((_ to_fp 11 53) x1_ack!3409)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3409) ((_ to_fp 11 53) a_ack!3414))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3415) ((_ to_fp 11 53) x1_ack!3409))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!3415) ((_ to_fp 11 53) x2_ack!3410)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3410)
                    ((_ to_fp 11 53) x1_ack!3409))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3413)
                           ((_ to_fp 11 53) y1_ack!3412))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3410)
                                   ((_ to_fp 11 53) x1_ack!3409)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3412)
                           ((_ to_fp 11 53) y0_ack!3411))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3409)
                                   ((_ to_fp 11 53) x0_ack!3416)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3410)
                                   ((_ to_fp 11 53) x1_ack!3409))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3409)
                                   ((_ to_fp 11 53) x0_ack!3416))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
