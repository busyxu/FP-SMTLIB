(declare-fun b_ack!1 () (_ BitVec 64))
(declare-fun a_ack!2 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!2) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FINVALID_LOG b_ack!1 b_ack!1))

(check-sat)
(exit)
