(declare-fun a_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x41dfffffff800000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #xc1dfffffffc00000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.div roundNearestTiesToEven
                               ((_ to_fp 11 53) a_ack!35)
                               ((_ to_fp 11 53) #x40026bb1bbb55516))))))
  (FPCHECK_FSUB_UNDERFLOW
    a_ack!35
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) roundNearestTiesToEven a!1)
            ((_ to_fp 11 53) #x40026bb1bbb55516)))))

(check-sat)
(exit)
