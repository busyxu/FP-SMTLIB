(declare-fun a_ack!23 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!22 () (_ BitVec 64))
(assert (not (bvslt a_ack!23 #x00000000)))
(assert (not (= #x00000000 a_ack!23)))
(assert (= #x00000001 a_ack!23))
(assert (FPCHECK_FMUL_ACCURACY #x4000000000000000 b_ack!22))

(check-sat)
(exit)
