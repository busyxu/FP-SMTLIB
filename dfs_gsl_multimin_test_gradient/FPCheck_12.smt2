(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p1_ack!53 () (_ BitVec 64))
(declare-fun x1_ack!54 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW x1_ack!54 p1_ack!53))

(check-sat)
(exit)
