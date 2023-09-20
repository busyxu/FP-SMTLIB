(declare-fun key_ack!1050 () (_ BitVec 32))
(declare-fun limit_ack!1049 () (_ BitVec 64))
(declare-fun epsabs_ack!1048 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!1051 () (_ BitVec 64))
(declare-fun b_ack!1047 () (_ BitVec 64))
(assert (not (bvslt key_ack!1050 #x00000001)))
(assert (bvslt #x00000006 key_ack!1050))
(assert (not (bvult #x00000000000003e8 limit_ack!1049)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1048)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1047)
          ((_ to_fp 11 53) a_ack!1051))))

(check-sat)
(exit)
