(declare-fun x_ack!3147 () (_ BitVec 64))
(declare-fun a_ack!3146 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3147) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3147) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3147) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!3147) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3147) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3147) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3147)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3fdb333333333333))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3147) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!3147) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) #x0000000000000000)
                     ((_ to_fp 11 53) a_ack!3146))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3146))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) a_ack!3146))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3146) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3146))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3146))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3146) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3146))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!3146)))))
  (not a!1)))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3146) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3146) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.leq ((_ to_fp 11 53) a_ack!3146)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3146))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3146))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!3146)
                          ((_ to_fp 11 53) #xffffffdfdffe0000)))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3146) ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!3146))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          ((_ to_fp 11 53) a_ack!3146)))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3146))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!3146))))
  (not (fp.leq (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!3146))
               ((_ to_fp 11 53) #xbff0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3146))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!3146))))
(let ((a!2 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) a_ack!3146)))
                  ((_ to_fp 11 53) #x3f48406003b2ae5a))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3146))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!3146))))
(let ((a!2 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) a_ack!3146)))
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!2))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!3146) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3146) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3146) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3146) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3146) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3146) ((_ to_fp 11 53) #x4330000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!3146))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!3146))))
(let ((a!2 (CF_log (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!3146))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3146)
                   (fp.sub roundNearestTiesToEven
                           a!2
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) a_ack!3146))))))
(let ((a!4 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_exp a!3)
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cc0000000000000)
            (fp.add roundNearestTiesToEven
                    (fp.abs a!3)
                    ((_ to_fp 11 53) #x3ff0000000000000)))
    a!4))))))

(check-sat)
(exit)
