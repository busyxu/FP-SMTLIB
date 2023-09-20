(declare-fun key_ack!1438 () (_ BitVec 32))
(declare-fun limit_ack!1437 () (_ BitVec 64))
(declare-fun epsabs_ack!1436 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!1439 () (_ BitVec 64))
(declare-fun b_ack!1435 () (_ BitVec 64))
(assert (not (bvslt key_ack!1438 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1438)))
(assert (= #x00000003 key_ack!1438))
(assert (not (bvult #x00000000000003e8 limit_ack!1437)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1436)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1435)
          ((_ to_fp 11 53) a_ack!1439))))

(check-sat)
(exit)
