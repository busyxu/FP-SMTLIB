(declare-fun a_ack!315 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!315) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!315) ((_ to_fp 11 53) #x402e000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!315)
                  ((_ to_fp 11 53) #x4024000000000000))
          ((_ to_fp 11 53) #x4014000000000000))))

(check-sat)
(exit)
