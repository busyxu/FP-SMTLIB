(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p0_ack!144 () (_ BitVec 64))
(declare-fun x0_ack!143 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW x0_ack!143 p0_ack!144))

(check-sat)
(exit)
