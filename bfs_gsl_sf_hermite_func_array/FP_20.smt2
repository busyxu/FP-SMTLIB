(declare-fun a_ack!208 () (_ BitVec 32))
(assert (not (bvslt a_ack!208 #x00000000)))
(assert (not (= #x00000000 a_ack!208)))
(assert (not (= #x00000001 a_ack!208)))
(assert (not (bvsle #x00000002 a_ack!208)))

(check-sat)
(exit)
