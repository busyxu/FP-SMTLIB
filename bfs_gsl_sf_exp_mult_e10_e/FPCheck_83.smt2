(declare-fun b_ack!311 () (_ BitVec 64))
(declare-fun a_ack!312 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!311) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!312) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!312)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!311))))))
  (not (fp.gt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #x41dfffffff800000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!312)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!311))))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #xc1dfffffffc00000)))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) b_ack!311)))))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!312)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!311))))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.div roundNearestTiesToEven
                               a!2
                               ((_ to_fp 11 53) #x40026bb1bbb55516))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!312))
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40026bb1bbb55516)
                           (fp.abs ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
  (FPCHECK_FMUL_UNDERFLOW #x3cc0000000000000 a!4)))))

(check-sat)
(exit)
