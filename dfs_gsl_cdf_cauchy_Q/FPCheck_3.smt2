(declare-fun FPCHECK_FDIV_ZERO ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!12 () (_ BitVec 64))
(declare-fun x_ack!13 () (_ BitVec 64))
(assert (FPCHECK_FDIV_ZERO x_ack!13 a_ack!12))

(check-sat)
(exit)
