(declare-fun a_ack!383 () (_ BitVec 32))
(assert (not (bvslt a_ack!383 #x00000000)))
(assert (not (= #x00000000 a_ack!383)))
(assert (not (= #x00000001 a_ack!383)))
(assert (= #x00000002 a_ack!383))

(check-sat)
(exit)
