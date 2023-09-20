(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x1_ack!6 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW x1_ack!6 x1_ack!6))

(check-sat)
(exit)
