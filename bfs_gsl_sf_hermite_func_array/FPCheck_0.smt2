(declare-fun a_ack!1 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!0 () (_ BitVec 64))
(assert (not (bvslt a_ack!1 #x00000000)))
(assert (= #x00000000 a_ack!1))
(assert (FPCHECK_FMUL_OVERFLOW #xbfe0000000000000 b_ack!0))

(check-sat)
(exit)
