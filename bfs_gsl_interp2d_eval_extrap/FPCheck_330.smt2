(declare-fun x1_ack!3486 () (_ BitVec 64))
(declare-fun x0_ack!3492 () (_ BitVec 64))
(declare-fun y0_ack!3487 () (_ BitVec 64))
(declare-fun x_ack!3490 () (_ BitVec 64))
(declare-fun y_ack!3491 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!3489 () (_ BitVec 64))
(declare-fun z0_ack!3488 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3492) ((_ to_fp 11 53) x1_ack!3486))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3487) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3490) ((_ to_fp 11 53) x0_ack!3492))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3490) ((_ to_fp 11 53) x1_ack!3486))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3491) ((_ to_fp 11 53) y0_ack!3487))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3491) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3486)
                       ((_ to_fp 11 53) x0_ack!3492))
               ((_ to_fp 11 53) x0_ack!3492))
       ((_ to_fp 11 53) x1_ack!3486)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3486)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3486)
                       ((_ to_fp 11 53) x0_ack!3492)))
       ((_ to_fp 11 53) x0_ack!3492)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3487))
               ((_ to_fp 11 53) y0_ack!3487))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3487)))
       ((_ to_fp 11 53) y0_ack!3487)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3491)
                       ((_ to_fp 11 53) y0_ack!3487))
               ((_ to_fp 11 53) y0_ack!3487))
       ((_ to_fp 11 53) y_ack!3491)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3491)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3491)
                       ((_ to_fp 11 53) y0_ack!3487)))
       ((_ to_fp 11 53) y0_ack!3487)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3490)
                           ((_ to_fp 11 53) x0_ack!3492))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3486)
                           ((_ to_fp 11 53) x0_ack!3492))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3491)
                                   ((_ to_fp 11 53) y0_ack!3487))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3487))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!3488))))
  (FPCHECK_FADD_UNDERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!3489))))))

(check-sat)
(exit)
