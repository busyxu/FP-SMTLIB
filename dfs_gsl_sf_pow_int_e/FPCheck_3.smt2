(declare-fun b_ack!13 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!14 () (_ BitVec 64))
(assert (not (bvslt b_ack!13 #x00000000)))
(assert (not (= #x00000000 (bvand b_ack!13 #x00000001))))
(assert (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a_ack!14))

(check-sat)
(exit)
