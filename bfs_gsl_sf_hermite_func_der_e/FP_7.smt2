(declare-fun a_ack!116 () (_ BitVec 32))
(declare-fun b_ack!115 () (_ BitVec 32))
(assert (not (bvslt a_ack!116 #x00000000)))
(assert (not (bvslt b_ack!115 #x00000000)))
(assert (not (= #x00000000 a_ack!116)))
(assert (not (= #x00000001 a_ack!116)))

(check-sat)
(exit)
