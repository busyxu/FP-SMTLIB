(declare-fun x1_ack!3455 () (_ BitVec 64))
(declare-fun x0_ack!3460 () (_ BitVec 64))
(declare-fun y0_ack!3456 () (_ BitVec 64))
(declare-fun x_ack!3458 () (_ BitVec 64))
(declare-fun y_ack!3459 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z3_ack!3457 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3460) ((_ to_fp 11 53) x1_ack!3455))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3456) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3458) ((_ to_fp 11 53) x0_ack!3460))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3458) ((_ to_fp 11 53) x1_ack!3455))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3459) ((_ to_fp 11 53) y0_ack!3456))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3459) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3455)
                       ((_ to_fp 11 53) x0_ack!3460))
               ((_ to_fp 11 53) x0_ack!3460))
       ((_ to_fp 11 53) x1_ack!3455)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3455)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3455)
                       ((_ to_fp 11 53) x0_ack!3460)))
       ((_ to_fp 11 53) x0_ack!3460)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3456))
               ((_ to_fp 11 53) y0_ack!3456))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3456)))
       ((_ to_fp 11 53) y0_ack!3456)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3459)
                       ((_ to_fp 11 53) y0_ack!3456))
               ((_ to_fp 11 53) y0_ack!3456))
       ((_ to_fp 11 53) y_ack!3459)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3459)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3459)
                       ((_ to_fp 11 53) y0_ack!3456)))
       ((_ to_fp 11 53) y0_ack!3456)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3459)
                                   ((_ to_fp 11 53) y0_ack!3456))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3456))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3458)
                                   ((_ to_fp 11 53) x0_ack!3460))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3455)
                                   ((_ to_fp 11 53) x0_ack!3460)))
                   a!1)))
  (FPCHECK_FMUL_ACCURACY a!2 z3_ack!3457))))

(check-sat)
(exit)
