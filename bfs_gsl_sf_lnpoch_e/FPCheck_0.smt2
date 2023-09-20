(declare-fun a_ack!2 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!1 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW a_ack!2 b_ack!1))

(check-sat)
(exit)
