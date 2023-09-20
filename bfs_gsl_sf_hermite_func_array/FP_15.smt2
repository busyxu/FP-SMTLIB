(declare-fun a_ack!155 () (_ BitVec 32))
(assert (not (bvslt a_ack!155 #x00000000)))
(assert (not (= #x00000000 a_ack!155)))
(assert (= #x00000001 a_ack!155))

(check-sat)
(exit)
