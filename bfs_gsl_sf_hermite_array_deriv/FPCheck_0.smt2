(declare-fun b_ack!9 () (_ BitVec 32))
(declare-fun a_ack!11 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!10 () (_ BitVec 64))
(assert (not (bvslt b_ack!9 #x00000000)))
(assert (not (bvslt a_ack!11 #x00000000)))
(assert (= #x00000000 a_ack!11))
(assert (not (bvslt b_ack!9 #x00000000)))
(assert (not (= #x00000000 b_ack!9)))
(assert (not (= #x00000001 b_ack!9)))
(assert (FPCHECK_FMUL_OVERFLOW #x4000000000000000 c_ack!10))

(check-sat)
(exit)
