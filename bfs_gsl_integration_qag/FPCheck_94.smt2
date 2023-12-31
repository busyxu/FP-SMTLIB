(declare-fun key_ack!1042 () (_ BitVec 32))
(declare-fun limit_ack!1041 () (_ BitVec 64))
(declare-fun epsabs_ack!1040 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!1043 () (_ BitVec 64))
(declare-fun b_ack!1039 () (_ BitVec 64))
(assert (not (bvslt key_ack!1042 #x00000001)))
(assert (bvslt #x00000006 key_ack!1042))
(assert (not (bvult #x00000000000003e8 limit_ack!1041)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1040)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!1039 a_ack!1043))

(check-sat)
(exit)
