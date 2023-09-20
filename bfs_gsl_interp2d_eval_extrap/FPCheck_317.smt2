(declare-fun x1_ack!3330 () (_ BitVec 64))
(declare-fun x0_ack!3335 () (_ BitVec 64))
(declare-fun y0_ack!3331 () (_ BitVec 64))
(declare-fun x_ack!3333 () (_ BitVec 64))
(declare-fun y_ack!3334 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!3332 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3335) ((_ to_fp 11 53) x1_ack!3330))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3331) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3333) ((_ to_fp 11 53) x0_ack!3335))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3333) ((_ to_fp 11 53) x1_ack!3330))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3334) ((_ to_fp 11 53) y0_ack!3331))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3334) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3330)
                       ((_ to_fp 11 53) x0_ack!3335))
               ((_ to_fp 11 53) x0_ack!3335))
       ((_ to_fp 11 53) x1_ack!3330)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3330)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3330)
                       ((_ to_fp 11 53) x0_ack!3335)))
       ((_ to_fp 11 53) x0_ack!3335)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3331))
               ((_ to_fp 11 53) y0_ack!3331))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3331)))
       ((_ to_fp 11 53) y0_ack!3331)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3334)
                       ((_ to_fp 11 53) y0_ack!3331))
               ((_ to_fp 11 53) y0_ack!3331))
       ((_ to_fp 11 53) y_ack!3334)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3334)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3334)
                       ((_ to_fp 11 53) y0_ack!3331)))
       ((_ to_fp 11 53) y0_ack!3331)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3333)
                                   ((_ to_fp 11 53) x0_ack!3335))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3330)
                                   ((_ to_fp 11 53) x0_ack!3335)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3334)
                                   ((_ to_fp 11 53) y0_ack!3331))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3331))))))
  (FPCHECK_FMUL_OVERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!3332)))

(check-sat)
(exit)
