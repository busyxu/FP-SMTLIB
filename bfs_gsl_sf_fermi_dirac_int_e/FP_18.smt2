(declare-fun a_ack!227 () (_ BitVec 32))
(assert (bvslt a_ack!227 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!227)))
(assert (not (bvslt a_ack!227 #xffffff9b)))
(assert (bvsle #x00000002 (bvsub #xffffffff a_ack!227)))

(check-sat)
(exit)
