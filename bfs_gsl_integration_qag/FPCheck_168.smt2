(declare-fun key_ack!1836 () (_ BitVec 32))
(declare-fun limit_ack!1835 () (_ BitVec 64))
(declare-fun epsabs_ack!1834 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!1837 () (_ BitVec 64))
(declare-fun b_ack!1833 () (_ BitVec 64))
(assert (not (bvslt key_ack!1836 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1836)))
(assert (= #x00000005 key_ack!1836))
(assert (not (bvult #x00000000000003e8 limit_ack!1835)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1834)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1833)
          ((_ to_fp 11 53) a_ack!1837))))

(check-sat)
(exit)
