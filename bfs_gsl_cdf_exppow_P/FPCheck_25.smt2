(declare-fun a_ack!163 () (_ BitVec 64))
(declare-fun x_ack!165 () (_ BitVec 64))
(declare-fun b_ack!164 () (_ BitVec 64))
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!165)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) a_ack!163)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!165)
                    ((_ to_fp 11 53) a_ack!163))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!164) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) b_ack!164))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!165)
                                  ((_ to_fp 11 53) a_ack!163))
                          b_ack!164)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!165)
                                  ((_ to_fp 11 53) a_ack!163))
                          b_ack!164)
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!165)
                                  ((_ to_fp 11 53) a_ack!163))
                          b_ack!164)
                  ((_ to_fp 11 53) #x4034000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (CF_pow (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!165)
                                  ((_ to_fp 11 53) a_ack!163))
                          b_ack!164)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) b_ack!164))))))
  (not a!1)))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!164))
            ((_ to_fp 11 53) #x412e848000000000))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!164))
                   (CF_pow (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!165)
                                   ((_ to_fp 11 53) a_ack!163))
                           b_ack!164))))
  (not a!1)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (CF_pow (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!165)
                  ((_ to_fp 11 53) a_ack!163))
          b_ack!164)
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) b_ack!164))))

(check-sat)
(exit)
