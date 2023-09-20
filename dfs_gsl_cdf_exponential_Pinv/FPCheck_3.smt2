(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x_ack!4 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 x_ack!4))

(check-sat)
(exit)
