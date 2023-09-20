(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x2_ack!12 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW x2_ack!12 x2_ack!12))

(check-sat)
(exit)
