(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!10 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW a_ack!10 a_ack!10))

(check-sat)
(exit)
