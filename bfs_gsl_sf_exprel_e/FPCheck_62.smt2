(declare-fun a_ack!103 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!103) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!103) ((_ to_fp 11 53) #xbf60624dd2f1a9fc))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!103) ((_ to_fp 11 53) #x3f60624dd2f1a9fc))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!103) ((_ to_fp 11 53) #x40862e42fefa39ef)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (CF_exp a_ack!103)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!103)))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 a!1)))

(check-sat)
(exit)
