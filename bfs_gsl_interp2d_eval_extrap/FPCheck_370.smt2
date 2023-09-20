(declare-fun x1_ack!3939 () (_ BitVec 64))
(declare-fun x0_ack!3943 () (_ BitVec 64))
(declare-fun y0_ack!3940 () (_ BitVec 64))
(declare-fun x_ack!3941 () (_ BitVec 64))
(declare-fun y_ack!3942 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3943) ((_ to_fp 11 53) x1_ack!3939))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3940) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3941) ((_ to_fp 11 53) x0_ack!3943)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3942) ((_ to_fp 11 53) y0_ack!3940))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!3942) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3939)
                       ((_ to_fp 11 53) x0_ack!3943))
               ((_ to_fp 11 53) x0_ack!3943))
       ((_ to_fp 11 53) x1_ack!3939)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3939)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3939)
                       ((_ to_fp 11 53) x0_ack!3943)))
       ((_ to_fp 11 53) x0_ack!3943)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3941)
                           ((_ to_fp 11 53) x0_ack!3943))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3939)
                           ((_ to_fp 11 53) x0_ack!3943)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!3941)
                           ((_ to_fp 11 53) x0_ack!3943))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!3939)
                           ((_ to_fp 11 53) x0_ack!3943)))))
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
                                   ((_ to_fp 11 53) x_ack!3941)
                                   ((_ to_fp 11 53) x0_ack!3943))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3939)
                                   ((_ to_fp 11 53) x0_ack!3943))))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!3942)
                    ((_ to_fp 11 53) y0_ack!3940))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!3940))))))

(check-sat)
(exit)
