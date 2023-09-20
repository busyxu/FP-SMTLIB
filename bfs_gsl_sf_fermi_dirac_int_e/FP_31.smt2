(declare-fun a_ack!480 () (_ BitVec 32))
(assert (not (bvslt a_ack!480 #xffffffff)))
(assert (not (= #xffffffff a_ack!480)))
(assert (not (= #x00000000 a_ack!480)))
(assert (= #x00000001 a_ack!480))

(check-sat)
(exit)
