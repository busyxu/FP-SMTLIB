(declare-fun x1_ack!3712 () (_ BitVec 64))
(declare-fun x0_ack!3717 () (_ BitVec 64))
(declare-fun y0_ack!3713 () (_ BitVec 64))
(declare-fun x_ack!3715 () (_ BitVec 64))
(declare-fun y_ack!3716 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!3714 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3717) ((_ to_fp 11 53) x1_ack!3712))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3713) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3715) ((_ to_fp 11 53) x0_ack!3717)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3716) ((_ to_fp 11 53) y0_ack!3713))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3716) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3712)
                       ((_ to_fp 11 53) x0_ack!3717))
               ((_ to_fp 11 53) x0_ack!3717))
       ((_ to_fp 11 53) x1_ack!3712)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3712)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3712)
                       ((_ to_fp 11 53) x0_ack!3717)))
       ((_ to_fp 11 53) x0_ack!3717)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3715)
                           ((_ to_fp 11 53) x0_ack!3717))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3712)
                           ((_ to_fp 11 53) x0_ack!3717)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3715)
                           ((_ to_fp 11 53) x0_ack!3717))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3712)
                           ((_ to_fp 11 53) x0_ack!3717)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3715)
                                   ((_ to_fp 11 53) x0_ack!3717))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3712)
                                   ((_ to_fp 11 53) x0_ack!3717)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3716)
                                   ((_ to_fp 11 53) y0_ack!3713))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3713))))))
  (FPCHECK_FMUL_OVERFLOW (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!3714)))

(check-sat)
(exit)
