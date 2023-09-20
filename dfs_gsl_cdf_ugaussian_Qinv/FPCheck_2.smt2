(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun Q_ack!4 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY Q_ack!4 #x3fe0000000000000))

(check-sat)
(exit)
