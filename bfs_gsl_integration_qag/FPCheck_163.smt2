(declare-fun key_ack!1785 () (_ BitVec 32))
(declare-fun limit_ack!1784 () (_ BitVec 64))
(declare-fun epsabs_ack!1783 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!1782 () (_ BitVec 64))
(declare-fun a_ack!1786 () (_ BitVec 64))
(assert (not (bvslt key_ack!1785 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1785)))
(assert (= #x00000005 key_ack!1785))
(assert (not (bvult #x00000000000003e8 limit_ack!1784)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1783)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1786)
          ((_ to_fp 11 53) b_ack!1782))))

(check-sat)
(exit)
