(declare-fun x1_ack!3672 () (_ BitVec 64))
(declare-fun x0_ack!3676 () (_ BitVec 64))
(declare-fun y0_ack!3673 () (_ BitVec 64))
(declare-fun x_ack!3674 () (_ BitVec 64))
(declare-fun y_ack!3675 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3676) ((_ to_fp 11 53) x1_ack!3672))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3673) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3674) ((_ to_fp 11 53) x0_ack!3676)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3675) ((_ to_fp 11 53) y0_ack!3673))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3675) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3672)
                       ((_ to_fp 11 53) x0_ack!3676))
               ((_ to_fp 11 53) x0_ack!3676))
       ((_ to_fp 11 53) x1_ack!3672)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3672)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3672)
                       ((_ to_fp 11 53) x0_ack!3676)))
       ((_ to_fp 11 53) x0_ack!3676)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3674)
                           ((_ to_fp 11 53) x0_ack!3676))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3672)
                           ((_ to_fp 11 53) x0_ack!3676)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3674)
                           ((_ to_fp 11 53) x0_ack!3676))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3672)
                           ((_ to_fp 11 53) x0_ack!3676)))))
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
                                   ((_ to_fp 11 53) x_ack!3674)
                                   ((_ to_fp 11 53) x0_ack!3676))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3672)
                                   ((_ to_fp 11 53) x0_ack!3676)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3675)
                                   ((_ to_fp 11 53) y0_ack!3673))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3673))))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!2)))

(check-sat)
(exit)
