(declare-fun a_ack!453 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!453) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!453) ((_ to_fp 11 53) #x402e000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!453)
                                   ((_ to_fp 11 53) #x4024000000000000))
                           ((_ to_fp 11 53) #x4014000000000000)))))
  (FPCHECK_FSUB_UNDERFLOW a!1 #xbff0000000000000)))

(check-sat)
(exit)
