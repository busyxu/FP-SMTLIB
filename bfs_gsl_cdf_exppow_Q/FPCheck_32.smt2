(declare-fun a_ack!205 () (_ BitVec 64))
(declare-fun x_ack!207 () (_ BitVec 64))
(declare-fun b_ack!206 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!207)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!205)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!207)
                    ((_ to_fp 11 53) a_ack!205))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!206) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!206))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!207)
                                  ((_ to_fp 11 53) a_ack!205))
                          b_ack!206)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!207)
                                  ((_ to_fp 11 53) a_ack!205))
                          b_ack!206)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!206))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!207)
                                   ((_ to_fp 11 53) a_ack!205))
                           b_ack!206)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!206))))))
  (not a!1)))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) b_ack!206))
             ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!206))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!206))
                   (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!207)
                                   ((_ to_fp 11 53) a_ack!205))
                           b_ack!206))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!207)
                                  ((_ to_fp 11 53) a_ack!205))
                          b_ack!206)
                  (fp.sub roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) b_ack!206))
                          ((_ to_fp 11 53) #x7ff8000000000001)))))
  (not a!1)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!206))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!207)
                                  ((_ to_fp 11 53) a_ack!205))
                          b_ack!206)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) b_ack!206))))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!207)
                                   ((_ to_fp 11 53) a_ack!205))
                           b_ack!206)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!206)))))
  (FPCHECK_FDIV_UNDERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            ((_ to_fp 11 53) b_ack!206)))))

(check-sat)
(exit)
