(declare-fun a_ack!76 () (_ BitVec 32))
(assert (not (bvslt a_ack!76 #x00000000)))
(assert (not (= #x00000000 a_ack!76)))
(assert (= #x00000001 a_ack!76))

(check-sat)
(exit)
