(declare-fun b_ack!0 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!1 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!0) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!0 a_ack!1))

(check-sat)
(exit)
