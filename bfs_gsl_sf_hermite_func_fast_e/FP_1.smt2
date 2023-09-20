(declare-fun a_ack!47 () (_ BitVec 32))
(assert (bvslt a_ack!47 #x000003e8))
(assert (bvslt a_ack!47 #x00000000))

(check-sat)
(exit)
