(declare-fun key_ack!1979 () (_ BitVec 32))
(declare-fun limit_ack!1978 () (_ BitVec 64))
(declare-fun epsabs_ack!1977 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!1976 () (_ BitVec 64))
(declare-fun a_ack!1980 () (_ BitVec 64))
(assert (not (bvslt key_ack!1979 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1979)))
(assert (= #x00000006 key_ack!1979))
(assert (not (bvult #x00000000000003e8 limit_ack!1978)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1977)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1980)
          ((_ to_fp 11 53) b_ack!1976))))

(check-sat)
(exit)
