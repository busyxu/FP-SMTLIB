(declare-fun a_ack!81 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x41dfffffff800000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #xc1dfffffffc00000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!81))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.div roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!81)
                               ((_ to_fp 11 53) #x40026bb1bbb55516))))))
(let ((a!3 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!81)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!2)
                                   ((_ to_fp 11 53) #x40026bb1bbb55516))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3cb0000000000000))
    (fp.abs a!3)))))

(check-sat)
(exit)
