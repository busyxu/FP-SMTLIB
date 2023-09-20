(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun p1_ack!75 () (_ BitVec 64))
(declare-fun x1_ack!76 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!76 p1_ack!75))

(check-sat)
(exit)
