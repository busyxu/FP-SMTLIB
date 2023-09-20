(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p1_ack!67 () (_ BitVec 64))
(declare-fun x1_ack!68 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW x1_ack!68 p1_ack!67))

(check-sat)
(exit)
