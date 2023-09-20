(declare-fun a_ack!938 () (_ BitVec 32))
(declare-fun b_ack!937 () (_ BitVec 32))
(assert (not (bvslt a_ack!938 #x00000000)))
(assert (bvslt b_ack!937 #x00000000))

(check-sat)
(exit)
