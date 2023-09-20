(declare-fun a_ack!81 () (_ BitVec 32))
(assert (not (bvslt a_ack!81 #x00000000)))
(assert (not (= #x00000000 a_ack!81)))
(assert (not (= #x00000001 a_ack!81)))

(check-sat)
(exit)
