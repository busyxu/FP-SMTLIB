(declare-fun a_ack!349 () (_ BitVec 32))
(assert (not (bvslt a_ack!349 #x00000000)))
(assert (not (= #x00000000 a_ack!349)))
(assert (= #x00000001 a_ack!349))

(check-sat)
(exit)
