(declare-fun a_ack!494 () (_ BitVec 32))
(assert (not (bvslt a_ack!494 #x00000000)))
(assert (not (= #x00000000 a_ack!494)))

(check-sat)
(exit)
