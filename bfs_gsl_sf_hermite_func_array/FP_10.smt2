(declare-fun a_ack!100 () (_ BitVec 32))
(assert (not (bvslt a_ack!100 #x00000000)))
(assert (not (= #x00000000 a_ack!100)))
(assert (not (= #x00000001 a_ack!100)))

(check-sat)
(exit)
