(declare-fun c_ack!92 () (_ BitVec 64))
(declare-fun a_ack!93 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!92) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!93) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!93)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!92))))))
  (not (fp.gt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #x41dfffffff800000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!93)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!92))))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x40026bb1bbb55516))
              ((_ to_fp 11 53) #xc1dfffffffc00000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!93)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!92))))))
(let ((a!2 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.div roundNearestTiesToEven
                               a!1
                               ((_ to_fp 11 53) #x40026bb1bbb55516))))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x40026bb1bbb55516))
    ((_ to_fp 11 53) roundNearestTiesToEven a!2)))))

(check-sat)
(exit)
