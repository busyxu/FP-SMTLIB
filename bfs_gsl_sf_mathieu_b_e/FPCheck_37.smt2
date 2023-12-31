(declare-fun n_ack!161 () (_ BitVec 32))
(declare-fun a_ack!162 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (= #x00000000 (bvsrem n_ack!161 #x00000002))))
(assert (not (= #x00000000 n_ack!161)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!162) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt n_ack!161 #x00000000))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!162) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvmul #xffffffff n_ack!161) #x00000001)))
(assert (= #x00000001 (bvmul #xffffffff n_ack!161)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!162) ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY #x4014000000000000 a_ack!162))

(check-sat)
(exit)
