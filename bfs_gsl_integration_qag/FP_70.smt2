(declare-fun key_ack!1567 () (_ BitVec 32))
(declare-fun limit_ack!1566 () (_ BitVec 64))
(declare-fun epsabs_ack!1565 () (_ BitVec 64))
(assert (not (bvslt key_ack!1567 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!1567)))
(assert (= #x00000004 key_ack!1567))
(assert (not (bvult #x00000000000003e8 limit_ack!1566)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1565)
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
