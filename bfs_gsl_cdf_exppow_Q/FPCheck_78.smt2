(declare-fun a_ack!481 () (_ BitVec 64))
(declare-fun x_ack!483 () (_ BitVec 64))
(declare-fun b_ack!482 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!483)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!481)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!483)
                    ((_ to_fp 11 53) a_ack!481))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!482) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!482))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!483)
                                  ((_ to_fp 11 53) a_ack!481))
                          b_ack!482)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!483)
                                  ((_ to_fp 11 53) a_ack!481))
                          b_ack!482)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!482))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!483)
                                   ((_ to_fp 11 53) a_ack!481))
                           b_ack!482)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!482))))))
  (not a!1)))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) b_ack!482))
             ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!482))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!482))
                   (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!483)
                                   ((_ to_fp 11 53) a_ack!481))
                           b_ack!482))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!483)
                                  ((_ to_fp 11 53) a_ack!481))
                          b_ack!482)
                  (fp.sub roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) b_ack!482))
                          ((_ to_fp 11 53) #x7ff8000000000001)))))
  (not a!1)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!482))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!483)
                                  ((_ to_fp 11 53) a_ack!481))
                          b_ack!482)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) b_ack!482))))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!483)
                                   ((_ to_fp 11 53) a_ack!481))
                           b_ack!482)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!482)))))
(let ((a!2 (fp.leq (fp.div roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!482)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!483)
                                   ((_ to_fp 11 53) a_ack!481))
                           b_ack!482)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!482)))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!482))))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!483)
                                   ((_ to_fp 11 53) a_ack!481))
                           b_ack!482)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!482)))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!482))))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3fe0000000000000))))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) b_ack!482))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!482))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!482))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!482))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!482))
            ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!482))
            ((_ to_fp 11 53) #x4330000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!483)
                                   ((_ to_fp 11 53) a_ack!481))
                           b_ack!482)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!482)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!482))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (CF_log a!2)
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!482))))))
(let ((a!4 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!482))
                           a!3))))
  (FPCHECK_FMUL_OVERFLOW
    #x3cc0000000000000
    (fp.add roundNearestTiesToEven a!4 ((_ to_fp 11 53) #x3ff0000000000000))))))))

(check-sat)
(exit)
