(declare-fun a_ack!56 () (_ BitVec 32))
(assert (not (bvslt a_ack!56 #x00000000)))
(assert (not (= #x00000000 a_ack!56)))
(assert (= #x00000001 a_ack!56))

(check-sat)
(exit)
