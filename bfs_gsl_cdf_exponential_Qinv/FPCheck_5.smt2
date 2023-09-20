(declare-fun x_ack!14 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun mu_ack!13 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!14) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) mu_ack!13))
  (CF_log x_ack!14)))

(check-sat)
(exit)
