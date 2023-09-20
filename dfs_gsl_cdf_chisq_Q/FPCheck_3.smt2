(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!5 () (_ BitVec 64))
(assert (FPCHECK_FDIV_OVERFLOW x_ack!5 #x4000000000000000))

(check-sat)
(exit)
