(declare-fun b_ack!40 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!41 () (_ BitVec 64))
(assert (not (bvslt b_ack!40 #x00000000)))
(assert (not (= #x00000000 (bvand b_ack!40 #x00000001))))
(assert (FPCHECK_FMUL_UNDERFLOW a_ack!41 a_ack!41))

(check-sat)
(exit)
