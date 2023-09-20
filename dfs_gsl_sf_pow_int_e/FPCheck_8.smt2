(declare-fun b_ack!32 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!33 () (_ BitVec 64))
(assert (not (bvslt b_ack!32 #x00000000)))
(assert (not (= #x00000000 (bvand b_ack!32 #x00000001))))
(assert (FPCHECK_FMUL_ACCURACY a_ack!33 a_ack!33))

(check-sat)
(exit)
