(declare-fun x_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1) ((_ to_fp 11 53) #x3fa999999999999a)))
(assert (FPCHECK_FINVALID_LOG x_ack!1 x_ack!1))

(check-sat)
(exit)
