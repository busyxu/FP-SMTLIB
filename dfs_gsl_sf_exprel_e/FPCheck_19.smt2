(declare-fun a_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #xbf60624dd2f1a9fc)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          (CF_exp a_ack!27)
          ((_ to_fp 11 53) #x3ff0000000000000))
  a_ack!27))

(check-sat)
(exit)
