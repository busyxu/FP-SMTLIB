(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p0_ack!140 () (_ BitVec 64))
(declare-fun x0_ack!139 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW x0_ack!139 p0_ack!140))

(check-sat)
(exit)
