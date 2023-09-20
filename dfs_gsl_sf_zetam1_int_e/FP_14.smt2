(declare-fun a_ack!214 () (_ BitVec 32))
(assert (not (bvslt a_ack!214 #x00000000)))
(assert (= #x00000001 a_ack!214))

(check-sat)
(exit)
