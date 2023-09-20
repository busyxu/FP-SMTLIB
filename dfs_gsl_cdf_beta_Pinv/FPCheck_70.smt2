(declare-fun x_ack!515 () (_ BitVec 64))
(declare-fun nu1_ack!513 () (_ BitVec 64))
(declare-fun nu2_ack!514 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!515) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!515) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!513) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!515) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!515) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!515) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!515))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!515))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!513) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!515))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!515))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!515))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!515))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!515))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!513) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!515))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!515))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!515))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) nu2_ack!514)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.add roundNearestTiesToEven
                               ((_ to_fp 11 53) nu2_ack!514)
                               ((_ to_fp 11 53) nu1_ack!513))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!515))
            ((_ to_fp 11 53) #x3fb999999999999a))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!514)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!514)
                                   ((_ to_fp 11 53) nu1_ack!513)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.geq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!514)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!514)
                                   ((_ to_fp 11 53) nu1_ack!513)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) nu2_ack!514)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu2_ack!514)
                                  ((_ to_fp 11 53) nu1_ack!513)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) nu2_ack!514)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu2_ack!514)
                                  ((_ to_fp 11 53) nu1_ack!513)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!513) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!513) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!513) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!513) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) nu1_ack!513))))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) nu1_ack!513)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!514)
               ((_ to_fp 11 53) nu1_ack!513))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu2_ack!514) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fd0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!514)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
