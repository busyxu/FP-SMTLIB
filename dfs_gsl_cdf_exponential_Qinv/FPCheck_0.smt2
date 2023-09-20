(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun mu_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 mu_ack!0))

(check-sat)
(exit)
