(declare-fun x1_ack!3793 () (_ BitVec 64))
(declare-fun x0_ack!3797 () (_ BitVec 64))
(declare-fun y0_ack!3794 () (_ BitVec 64))
(declare-fun x_ack!3795 () (_ BitVec 64))
(declare-fun y_ack!3796 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3797) ((_ to_fp 11 53) x1_ack!3793))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3794) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3795) ((_ to_fp 11 53) x0_ack!3797)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3796) ((_ to_fp 11 53) y0_ack!3794))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3796) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3793)
                       ((_ to_fp 11 53) x0_ack!3797))
               ((_ to_fp 11 53) x0_ack!3797))
       ((_ to_fp 11 53) x1_ack!3793)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3793)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3793)
                       ((_ to_fp 11 53) x0_ack!3797)))
       ((_ to_fp 11 53) x0_ack!3797)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3795)
                           ((_ to_fp 11 53) x0_ack!3797))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3793)
                           ((_ to_fp 11 53) x0_ack!3797)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3795)
                           ((_ to_fp 11 53) x0_ack!3797))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3793)
                           ((_ to_fp 11 53) x0_ack!3797)))))
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
                                   ((_ to_fp 11 53) y_ack!3796)
                                   ((_ to_fp 11 53) y0_ack!3794))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3794))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!3795)
                    ((_ to_fp 11 53) x0_ack!3797))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3793)
                    ((_ to_fp 11 53) x0_ack!3797)))
    a!1)))

(check-sat)
(exit)
