(declare-fun c_ack!328 () (_ BitVec 64))
(declare-fun a_ack!329 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!328) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!329) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!329) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!328))
       ((_ to_fp 11 53) #x5fe9999999999999)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!328))
            ((_ to_fp 11 53) #x2003333333333333))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!329)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!328))))))
  (not (fp.gt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #x41dfffffff800000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!329)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!328))))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #xc1dfffffffc00000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!329)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!328))))))
(let ((a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.div roundNearestTiesToEven
                               a!1
                               ((_ to_fp 11 53) #x40026bb1bbb55516))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40026bb1bbb55516))
                           ((_ to_fp 11 53) roundNearestTiesToEven a!2))
                   ((_ to_fp 11 53) #x40026bb1bbb55516))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 (fp.abs a!3))))))

(check-sat)
(exit)
