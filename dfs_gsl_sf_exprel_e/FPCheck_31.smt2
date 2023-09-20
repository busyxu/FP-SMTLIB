(declare-fun a_ack!47 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3cb0000000000000
  (fp.abs (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbff0000000000000)
                  ((_ to_fp 11 53) a_ack!47)))))

(check-sat)
(exit)
