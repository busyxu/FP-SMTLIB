(declare-fun a_ack!38 () (_ BitVec 32))
(assert (not (bvslt a_ack!38 #xffffffff)))
(assert (not (= #xffffffff a_ack!38)))
(assert (not (= #x00000000 a_ack!38)))

(check-sat)
(exit)
