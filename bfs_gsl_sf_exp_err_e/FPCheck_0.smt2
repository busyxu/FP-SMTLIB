(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!0 () (_ BitVec 64))
(declare-fun a_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FADD_OVERFLOW a_ack!1 (fp.abs ((_ to_fp 11 53) b_ack!0))))

(check-sat)
(exit)
