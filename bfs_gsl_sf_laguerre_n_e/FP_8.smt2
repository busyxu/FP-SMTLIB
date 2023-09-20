(declare-fun a_ack!133 () (_ BitVec 32))
(assert (not (bvslt a_ack!133 #x00000000)))
(assert (not (= #x00000000 a_ack!133)))
(assert (= #x00000001 a_ack!133))

(check-sat)
(exit)
