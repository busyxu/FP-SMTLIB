(declare-fun a_ack!29 () (_ BitVec 32))
(assert (not (bvslt a_ack!29 #xffffffff)))
(assert (= #xffffffff a_ack!29))

(check-sat)
(exit)
