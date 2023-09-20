(declare-fun q_ack!36 () (_ BitVec 64))
(declare-fun j_ack!38 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun x_ack!37 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!36) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!38 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!38)))
(assert (FPCHECK_FMUL_ACCURACY
  #x7ff8000010000000
  (CF_exp (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbff0000000000000)
                  ((_ to_fp 11 53) x_ack!37)))))

(check-sat)
(exit)
