(declare-fun b_ack!8 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!9 () (_ BitVec 64))
(assert (not (bvslt b_ack!8 #x00000000)))
(assert (= #x00000000 (bvand b_ack!8 #x00000001)))
(assert (FPCHECK_FMUL_ACCURACY a_ack!9 a_ack!9))

(check-sat)
(exit)
