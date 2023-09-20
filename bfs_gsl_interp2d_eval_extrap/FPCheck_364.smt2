(declare-fun x1_ack!3869 () (_ BitVec 64))
(declare-fun x0_ack!3875 () (_ BitVec 64))
(declare-fun y0_ack!3870 () (_ BitVec 64))
(declare-fun x_ack!3873 () (_ BitVec 64))
(declare-fun y_ack!3874 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!3872 () (_ BitVec 64))
(declare-fun z0_ack!3871 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3875) ((_ to_fp 11 53) x1_ack!3869))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3870) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3873) ((_ to_fp 11 53) x0_ack!3875)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3874) ((_ to_fp 11 53) y0_ack!3870))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3874) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3869)
                       ((_ to_fp 11 53) x0_ack!3875))
               ((_ to_fp 11 53) x0_ack!3875))
       ((_ to_fp 11 53) x1_ack!3869)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3869)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3869)
                       ((_ to_fp 11 53) x0_ack!3875)))
       ((_ to_fp 11 53) x0_ack!3875)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3873)
                           ((_ to_fp 11 53) x0_ack!3875))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3869)
                           ((_ to_fp 11 53) x0_ack!3875)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3873)
                           ((_ to_fp 11 53) x0_ack!3875))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3869)
                           ((_ to_fp 11 53) x0_ack!3875)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3873)
                           ((_ to_fp 11 53) x0_ack!3875))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3869)
                           ((_ to_fp 11 53) x0_ack!3875))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3874)
                                   ((_ to_fp 11 53) y0_ack!3870))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3870))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!3871))))
  (FPCHECK_FADD_OVERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!3872))))))

(check-sat)
(exit)
