(declare-fun key_ack!1765 () (_ BitVec 32))
(declare-fun limit_ack!1764 () (_ BitVec 64))
(declare-fun epsabs_ack!1763 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!1762 () (_ BitVec 64))
(declare-fun a_ack!1766 () (_ BitVec 64))
(assert (not (bvslt key_ack!1765 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1765)))
(assert (= #x00000005 key_ack!1765))
(assert (not (bvult #x00000000000003e8 limit_ack!1764)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1763)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1766)
          ((_ to_fp 11 53) b_ack!1762))))

(check-sat)
(exit)
