(declare-fun x_ack!9887 () (_ BitVec 64))
(declare-fun nu1_ack!9885 () (_ BitVec 64))
(declare-fun nu2_ack!9886 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!9887) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!9887) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!9887) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!9887) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!9886) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!9886) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!9886) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!9886) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!9886) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) nu2_ack!9886))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) nu2_ack!9886)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!9885)
               ((_ to_fp 11 53) nu2_ack!9886))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) nu1_ack!9885)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!9885) ((_ to_fp 11 53) #x4330000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) nu2_ack!9886)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!9886) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!9886) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!9886) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!9886) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!9886) ((_ to_fp 11 53) #x4330000000000000))))
(assert (fp.geq ((_ to_fp 11 53) #x3ff0000000000000)
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) nu2_ack!9886))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!9885)
                       ((_ to_fp 11 53) nu2_ack!9886))
               ((_ to_fp 11 53) nu1_ack!9885))
       ((_ to_fp 11 53) nu2_ack!9886)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!9885)
                       ((_ to_fp 11 53) nu2_ack!9886))
               ((_ to_fp 11 53) nu2_ack!9886))
       ((_ to_fp 11 53) nu1_ack!9885)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) nu1_ack!9885)
                     ((_ to_fp 11 53) nu2_ack!9886))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!9885)
                    ((_ to_fp 11 53) nu2_ack!9886))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!9885)
                    ((_ to_fp 11 53) nu2_ack!9886))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!9885)
                    ((_ to_fp 11 53) nu2_ack!9886))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!9885)
                    ((_ to_fp 11 53) nu2_ack!9886))
            ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!9885)
                    ((_ to_fp 11 53) nu2_ack!9886))
            ((_ to_fp 11 53) #x4330000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu1_ack!9885)
                     ((_ to_fp 11 53) nu2_ack!9886))
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!9885)
                                  ((_ to_fp 11 53) nu2_ack!9886)))
                  ((_ to_fp 11 53) #x3f6428a2f98d728d))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!9885)
                       ((_ to_fp 11 53) nu2_ack!9886)))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!9885)
                           ((_ to_fp 11 53) nu2_ack!9886)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4020000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!9885)
                           ((_ to_fp 11 53) nu2_ack!9886)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4020000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!9885)
                                   ((_ to_fp 11 53) nu2_ack!9886)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a!1)))

(check-sat)
(exit)
