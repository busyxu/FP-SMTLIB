(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun P_ack!0 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW P_ack!0 #x3fe0000000000000))

(check-sat)
(exit)
