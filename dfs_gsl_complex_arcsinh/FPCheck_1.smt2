(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y_ack!1 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW #xbff0000000000000 y_ack!1))

(check-sat)
(exit)
