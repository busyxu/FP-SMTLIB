(declare-fun a_ack!52 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!52) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!52) ((_ to_fp 11 53) #xbf60624dd2f1a9fc)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  (fp.sub roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  (CF_exp a_ack!52)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) a_ack!52))))

(check-sat)
(exit)
