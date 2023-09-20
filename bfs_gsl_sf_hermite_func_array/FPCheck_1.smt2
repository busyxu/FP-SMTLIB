(declare-fun a_ack!3 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!2 () (_ BitVec 64))
(assert (not (bvslt a_ack!3 #x00000000)))
(assert (= #x00000000 a_ack!3))
(assert (FPCHECK_FMUL_UNDERFLOW #xbfe0000000000000 b_ack!2))

(check-sat)
(exit)
