(declare-fun a_ack!225 () (_ BitVec 32))
(assert (bvslt a_ack!225 #xffffffff))
(assert (bvsle #xffffffff a_ack!225))

(check-sat)
(exit)
