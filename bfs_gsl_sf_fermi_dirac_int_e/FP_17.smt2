(declare-fun a_ack!226 () (_ BitVec 32))
(assert (bvslt a_ack!226 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!226)))
(assert (bvslt a_ack!226 #xffffff9b))

(check-sat)
(exit)
