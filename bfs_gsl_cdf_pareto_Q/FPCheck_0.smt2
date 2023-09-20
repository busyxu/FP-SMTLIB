(declare-fun nu2_ack!0 () (_ BitVec 64))
(declare-fun x_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1) ((_ to_fp 11 53) nu2_ack!0))))
(assert (FPCHECK_FDIV_OVERFLOW nu2_ack!0 x_ack!1))

(check-sat)
(exit)
