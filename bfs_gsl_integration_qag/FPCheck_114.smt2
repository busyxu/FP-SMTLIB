(declare-fun key_ack!1254 () (_ BitVec 32))
(declare-fun limit_ack!1253 () (_ BitVec 64))
(declare-fun epsabs_ack!1252 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!1255 () (_ BitVec 64))
(declare-fun b_ack!1251 () (_ BitVec 64))
(assert (not (bvslt key_ack!1254 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1254)))
(assert (= #x00000002 key_ack!1254))
(assert (not (bvult #x00000000000003e8 limit_ack!1253)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1252)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1251)
          ((_ to_fp 11 53) a_ack!1255))))

(check-sat)
(exit)
