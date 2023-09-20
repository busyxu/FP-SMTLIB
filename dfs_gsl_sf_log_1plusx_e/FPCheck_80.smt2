(declare-fun a_ack!115 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!115) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!115))
            ((_ to_fp 11 53) #x3f6428a2f98d728d))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!115))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.abs (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!115))))))
  (FPCHECK_FMUL_UNDERFLOW #x3cb0000000000000 a!1)))

(check-sat)
(exit)
