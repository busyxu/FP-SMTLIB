(declare-fun a_ack!463 () (_ BitVec 32))
(declare-fun b_ack!462 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (bvslt a_ack!463 #x00000000))
(assert (not (= #x00000000 (bvand (bvsub #x00000000 a_ack!463) #x00000001))))
(assert (not (= #x00000000 a_ack!463)))
(assert (= #xffffffff a_ack!463))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!462) ((_ to_fp 11 53) #x4330000000000000)))
(assert (FPCHECK_FMUL_ACCURACY b_ack!462 b_ack!462))

(check-sat)
(exit)
