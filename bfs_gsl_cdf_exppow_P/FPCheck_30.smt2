(declare-fun a_ack!193 () (_ BitVec 64))
(declare-fun x_ack!195 () (_ BitVec 64))
(declare-fun b_ack!194 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!195)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!193)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!195)
                    ((_ to_fp 11 53) a_ack!193))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!194) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) b_ack!194))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!195)
                                  ((_ to_fp 11 53) a_ack!193))
                          b_ack!194)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!195)
                                  ((_ to_fp 11 53) a_ack!193))
                          b_ack!194)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!195)
                                  ((_ to_fp 11 53) a_ack!193))
                          b_ack!194)
                  ((_ to_fp 11 53) #x4034000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!195)
                                  ((_ to_fp 11 53) a_ack!193))
                          b_ack!194)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) b_ack!194))))))
  (not a!1)))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!194))
            ((_ to_fp 11 53) #x412e848000000000))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!194))
                   (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!195)
                                   ((_ to_fp 11 53) a_ack!193))
                           b_ack!194))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!195)
                                   ((_ to_fp 11 53) a_ack!193))
                           b_ack!194)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!194)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven a!1 a!1)
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      ((_ to_fp 11 53) b_ack!194))))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!194))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!194))))

(check-sat)
(exit)
