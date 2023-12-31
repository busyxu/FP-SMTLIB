(declare-fun a_ack!1983 () (_ BitVec 32))
(declare-fun b_ack!1981 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!1982 () (_ BitVec 64))
(assert (not (bvslt a_ack!1983 #x00000000)))
(assert (not (bvslt b_ack!1981 #x00000000)))
(assert (not (= #x00000000 a_ack!1983)))
(assert (not (= #x00000001 a_ack!1983)))
(assert (FPCHECK_FMUL_ACCURACY #x3ff6a09e667f3bcd c_ack!1982))

(check-sat)
(exit)
