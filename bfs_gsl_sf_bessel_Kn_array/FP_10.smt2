(declare-fun a_ack!76 () (_ BitVec 32))
(declare-fun b_ack!75 () (_ BitVec 32))
(assert (not (bvslt a_ack!76 #x00000000)))
(assert (bvslt b_ack!75 a_ack!76))
(assert (bvsle #x00000000 (bvsub b_ack!75 a_ack!76)))
(assert (not (bvsle #x00000001 (bvsub b_ack!75 a_ack!76))))

(check-sat)
(exit)
