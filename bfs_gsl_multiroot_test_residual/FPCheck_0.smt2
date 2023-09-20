(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x0_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW #x3ff0000000000000 x0_ack!0))

(check-sat)
(exit)
