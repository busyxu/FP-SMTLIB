(declare-fun a_ack!224 () (_ BitVec 32))
(assert (not (bvslt a_ack!224 #xffffffff)))
(assert (not (= #xffffffff a_ack!224)))
(assert (not (= #x00000000 a_ack!224)))

(check-sat)
(exit)
