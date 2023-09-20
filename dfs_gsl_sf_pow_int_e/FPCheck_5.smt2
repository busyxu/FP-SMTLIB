(declare-fun b_ack!19 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!20 () (_ BitVec 64))
(assert (not (bvslt b_ack!19 #x00000000)))
(assert (not (= #x00000000 (bvand b_ack!19 #x00000001))))
(assert (FPCHECK_FMUL_ACCURACY #x3ff0000000000000 a_ack!20))

(check-sat)
(exit)
