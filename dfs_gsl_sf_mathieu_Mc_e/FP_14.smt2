(declare-fun q_ack!393 () (_ BitVec 64))
(declare-fun j_ack!394 () (_ BitVec 32))
(declare-fun n_ack!392 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!393) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!394 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!394)))
(assert (= #x00000000 (bvsrem n_ack!392 #x00000002)))
(assert (= #x00000000 (bvsrem n_ack!392 #x00000002)))
(assert (not (fp.eq ((_ to_fp 11 53) q_ack!393) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!392 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) q_ack!393) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt n_ack!392 #x00000000)))
(assert (not (= #x00000000 n_ack!392)))
(assert (not (= #x00000001 n_ack!392)))
(assert (not (= #x00000002 n_ack!392)))
(assert (not (= #x00000003 n_ack!392)))
(assert (not (bvslt n_ack!392 #x00000046)))
(assert (= #x00000000 n_ack!392))

(check-sat)
(exit)
