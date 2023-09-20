(declare-fun a_ack!369 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.geq ((_ to_fp 11 53) a_ack!369) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!369) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!369) ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!369) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4010000000000000
  (CF_log (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!369)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
