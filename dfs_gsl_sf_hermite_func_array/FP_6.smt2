(declare-fun a_ack!80 () (_ BitVec 32))
(assert (not (bvslt a_ack!80 #x00000000)))
(assert (not (= #x00000000 a_ack!80)))
(assert (= #x00000001 a_ack!80))

(check-sat)
(exit)
