(declare-fun epsabs_ack!266 () (_ BitVec 64))
(declare-fun epsrel_ack!267 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!268 () (_ BitVec 64))
(declare-fun b_ack!265 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!266)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!267)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!266) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!267)
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #xbff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!265)
                  ((_ to_fp 11 53) a_ack!268))
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
