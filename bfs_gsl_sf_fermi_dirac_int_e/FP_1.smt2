(declare-fun a_ack!20 () (_ BitVec 32))
(assert (bvslt a_ack!20 #xffffffff))

(check-sat)
(exit)
