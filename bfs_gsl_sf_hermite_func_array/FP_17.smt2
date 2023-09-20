(declare-fun a_ack!179 () (_ BitVec 32))
(assert (not (bvslt a_ack!179 #x00000000)))
(assert (not (= #x00000000 a_ack!179)))
(assert (= #x00000001 a_ack!179))

(check-sat)
(exit)
