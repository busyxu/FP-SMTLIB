(declare-fun a_ack!645 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!645) ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!645) ((_ to_fp 11 53) #x402e000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (CF_pow #x4008000000000000
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) a_ack!645)))))

(check-sat)
(exit)
