(declare-fun a_ack!149 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!149) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!149) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!149) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!149) ((_ to_fp 11 53) #x4041acdd632f662a)))
(assert (let ((a!1 ((_ fp.to_sbv 32)
             roundTowardZero
             (CF_floor (fp.div roundNearestTiesToEven
                               ((_ to_fp 11 53) #x4086232bdd7abcd2)
                               ((_ to_fp 11 53) a_ack!149))))))
  (FPCHECK_FMUL_ACCURACY ((_ to_fp 11 53) roundNearestTiesToEven a!1) a_ack!149)))

(check-sat)
(exit)
