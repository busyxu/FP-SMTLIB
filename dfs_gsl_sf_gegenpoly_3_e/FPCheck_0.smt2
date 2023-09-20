(declare-fun a_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!0 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW #x3ff5555555555555 b_ack!0))

(check-sat)
(exit)
