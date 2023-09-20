(declare-fun x1_ack!3406 () (_ BitVec 64))
(declare-fun x0_ack!3410 () (_ BitVec 64))
(declare-fun y0_ack!3407 () (_ BitVec 64))
(declare-fun x_ack!3408 () (_ BitVec 64))
(declare-fun y_ack!3409 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3410) ((_ to_fp 11 53) x1_ack!3406))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3407) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3408) ((_ to_fp 11 53) x0_ack!3410))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3408) ((_ to_fp 11 53) x1_ack!3406))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3409) ((_ to_fp 11 53) y0_ack!3407))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3409) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3406)
                       ((_ to_fp 11 53) x0_ack!3410))
               ((_ to_fp 11 53) x0_ack!3410))
       ((_ to_fp 11 53) x1_ack!3406)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3406)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3406)
                       ((_ to_fp 11 53) x0_ack!3410)))
       ((_ to_fp 11 53) x0_ack!3410)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3407))
               ((_ to_fp 11 53) y0_ack!3407))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3407)))
       ((_ to_fp 11 53) y0_ack!3407)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3409)
                       ((_ to_fp 11 53) y0_ack!3407))
               ((_ to_fp 11 53) y0_ack!3407))
       ((_ to_fp 11 53) y_ack!3409)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3409)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3409)
                       ((_ to_fp 11 53) y0_ack!3407)))
       ((_ to_fp 11 53) y0_ack!3407)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3409)
                                   ((_ to_fp 11 53) y0_ack!3407))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3407))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!3408)
                    ((_ to_fp 11 53) x0_ack!3410))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3406)
                    ((_ to_fp 11 53) x0_ack!3410)))
    a!1)))

(check-sat)
(exit)
