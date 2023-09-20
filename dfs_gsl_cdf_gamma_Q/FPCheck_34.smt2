(declare-fun b_ack!205 () (_ BitVec 64))
(declare-fun x_ack!206 () (_ BitVec 64))
(declare-fun a_ack!204 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!206)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) b_ack!205)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!206) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!206)
                    ((_ to_fp 11 53) b_ack!205))
            ((_ to_fp 11 53) a_ack!204))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!206)
                    ((_ to_fp 11 53) b_ack!205))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!206)
                    ((_ to_fp 11 53) b_ack!205))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!204) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!206)
                     ((_ to_fp 11 53) b_ack!205))
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!204)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!204) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!204) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!204)
             (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!206)
                     ((_ to_fp 11 53) b_ack!205)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!206)
                    ((_ to_fp 11 53) b_ack!205))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!204)
                    ((_ to_fp 11 53) #x7ff8000000000001)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!204) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!206)
                    ((_ to_fp 11 53) b_ack!205))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!204)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!206)
                                   ((_ to_fp 11 53) b_ack!205))
                           ((_ to_fp 11 53) a_ack!204))
                   ((_ to_fp 11 53) a_ack!204))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #xbff0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!206)
                                   ((_ to_fp 11 53) b_ack!205))
                           ((_ to_fp 11 53) a_ack!204))
                   ((_ to_fp 11 53) a_ack!204))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!206)
                                   ((_ to_fp 11 53) b_ack!205))
                           ((_ to_fp 11 53) a_ack!204))
                   ((_ to_fp 11 53) a_ack!204))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!206)
                                   ((_ to_fp 11 53) b_ack!205))
                           ((_ to_fp 11 53) a_ack!204))
                   ((_ to_fp 11 53) a_ack!204))))
(let ((a!2 (fp.abs (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (FPCHECK_FMUL_ACCURACY
    #x3cb0000000000000
    (fp.add roundNearestTiesToEven a!2 (fp.abs a!1))))))

(check-sat)
(exit)
