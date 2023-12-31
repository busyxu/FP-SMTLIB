(declare-fun key_ack!1216 () (_ BitVec 32))
(declare-fun limit_ack!1215 () (_ BitVec 64))
(declare-fun epsabs_ack!1214 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!1217 () (_ BitVec 64))
(declare-fun b_ack!1213 () (_ BitVec 64))
(assert (not (bvslt key_ack!1216 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1216)))
(assert (= #x00000002 key_ack!1216))
(assert (not (bvult #x00000000000003e8 limit_ack!1215)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1214)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!1213 a_ack!1217))

(check-sat)
(exit)
