(declare-fun a_ack!24 () (_ BitVec 32))
(assert (not (bvslt a_ack!24 #x000003e8)))

(check-sat)
(exit)
