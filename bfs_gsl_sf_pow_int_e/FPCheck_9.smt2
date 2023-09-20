(declare-fun b_ack!36 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!37 () (_ BitVec 64))
(assert (not (bvslt b_ack!36 #x00000000)))
(assert (not (= #x00000000 (bvand b_ack!36 #x00000001))))
(assert (FPCHECK_FMUL_OVERFLOW a_ack!37 a_ack!37))

(check-sat)
(exit)
