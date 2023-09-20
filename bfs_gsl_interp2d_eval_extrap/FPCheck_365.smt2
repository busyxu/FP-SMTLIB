(declare-fun x1_ack!3883 () (_ BitVec 64))
(declare-fun x0_ack!3889 () (_ BitVec 64))
(declare-fun y0_ack!3884 () (_ BitVec 64))
(declare-fun x_ack!3887 () (_ BitVec 64))
(declare-fun y_ack!3888 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!3886 () (_ BitVec 64))
(declare-fun z0_ack!3885 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3889) ((_ to_fp 11 53) x1_ack!3883))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3884) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3887) ((_ to_fp 11 53) x0_ack!3889)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3888) ((_ to_fp 11 53) y0_ack!3884))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3888) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3883)
                       ((_ to_fp 11 53) x0_ack!3889))
               ((_ to_fp 11 53) x0_ack!3889))
       ((_ to_fp 11 53) x1_ack!3883)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3883)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3883)
                       ((_ to_fp 11 53) x0_ack!3889)))
       ((_ to_fp 11 53) x0_ack!3889)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3887)
                           ((_ to_fp 11 53) x0_ack!3889))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3883)
                           ((_ to_fp 11 53) x0_ack!3889)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3887)
                           ((_ to_fp 11 53) x0_ack!3889))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3883)
                           ((_ to_fp 11 53) x0_ack!3889)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3887)
                           ((_ to_fp 11 53) x0_ack!3889))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3883)
                           ((_ to_fp 11 53) x0_ack!3889))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3888)
                                   ((_ to_fp 11 53) y0_ack!3884))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3884))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z0_ack!3885))))
  (FPCHECK_FADD_UNDERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z3_ack!3886))))))

(check-sat)
(exit)
