(declare-fun a_ack!118 () (_ BitVec 32))
(declare-fun b_ack!116 () (_ BitVec 32))
(declare-fun c_ack!117 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!118 #x00000000)))
(assert (not (bvslt b_ack!116 a_ack!118)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!117) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt (bvadd #x00000001 b_ack!116) #x00000000))
(assert (= #x00000000 (bvand (bvsub #xffffffff b_ack!116) #x00000001)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!117) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!116)))
(assert (not (= #xfffffffe b_ack!116)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!117) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW c_ack!117 c_ack!117))

(check-sat)
(exit)
