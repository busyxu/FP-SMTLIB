(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!9 () (_ BitVec 64))
(declare-fun c_ack!8 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY c_ack!8 a_ack!9))

(check-sat)
(exit)
