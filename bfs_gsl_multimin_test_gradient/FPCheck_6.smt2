(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p0_ack!26 () (_ BitVec 64))
(declare-fun x0_ack!25 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW x0_ack!25 p0_ack!26))

(check-sat)
(exit)
