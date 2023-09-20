(declare-fun a_ack!123 () (_ BitVec 32))
(assert (not (bvslt a_ack!123 #x00000000)))
(assert (not (= #x00000000 a_ack!123)))
(assert (not (= #x00000001 a_ack!123)))

(check-sat)
(exit)
