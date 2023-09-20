(declare-fun a_ack!26 () (_ BitVec 32))
(assert (not (bvslt a_ack!26 #x00000000)))
(assert (not (= #x00000000 a_ack!26)))
(assert (= #x00000001 a_ack!26))

(check-sat)
(exit)
