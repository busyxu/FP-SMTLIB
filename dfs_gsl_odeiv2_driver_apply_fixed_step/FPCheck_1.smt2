(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 y0_ack!1))

(check-sat)
(exit)
