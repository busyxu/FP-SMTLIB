(declare-fun a_ack!32 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #xbf60624dd2f1a9fc)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3cc0000000000000
  (fp.abs (fp.sub roundNearestTiesToEven
                  (CF_exp a_ack!32)
                  ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
