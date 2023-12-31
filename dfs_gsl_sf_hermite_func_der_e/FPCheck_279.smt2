(declare-fun a_ack!1799 () (_ BitVec 32))
(declare-fun b_ack!1797 () (_ BitVec 32))
(declare-fun c_ack!1798 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1799 #x00000000)))
(assert (not (bvslt b_ack!1797 #x00000000)))
(assert (= #x00000000 a_ack!1799))
(assert (not (bvslt b_ack!1797 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1798) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!1797)))
(assert (= #x00000001 b_ack!1797))
(assert (FPCHECK_FMUL_OVERFLOW #xbfe0000000000000 c_ack!1798))

(check-sat)
(exit)
