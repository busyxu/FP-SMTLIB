(declare-fun a_ack!638 () (_ BitVec 32))
(assert (bvslt a_ack!638 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!638)))
(assert (not (bvslt a_ack!638 #xffffff9b)))
(assert (bvsle #x00000002 (bvsub #xffffffff a_ack!638)))
(assert (not (bvsle #x00000003 (bvsub #xffffffff a_ack!638))))

(check-sat)
(exit)
