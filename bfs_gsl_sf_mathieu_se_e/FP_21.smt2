(declare-fun n_ack!305 () (_ BitVec 32))
(declare-fun a_ack!306 () (_ BitVec 64))
(assert (not (= #x00000000 (bvsrem n_ack!305 #x00000002))))
(assert (not (= #x00000000 n_ack!305)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!306) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt n_ack!305 #x00000000))
(assert (not (= #x00000000 (bvsrem (bvmul #xffffffff n_ack!305) #x00000002))))
(assert (not (= #x00000000 (bvmul #xffffffff n_ack!305))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!306) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!305) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!306) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!305) #x00000001)))
(assert (not (= #x00000001 (bvmul #xffffffff n_ack!305))))
(assert (not (= #x00000002 (bvmul #xffffffff n_ack!305))))
(assert (not (= #x00000003 (bvmul #xffffffff n_ack!305))))
(assert (bvslt (bvmul #xffffffff n_ack!305) #x00000046))

(check-sat)
(exit)
