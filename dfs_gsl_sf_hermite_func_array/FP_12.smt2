(declare-fun a_ack!134 () (_ BitVec 32))
(assert (not (bvslt a_ack!134 #x00000000)))
(assert (not (= #x00000000 a_ack!134)))
(assert (not (= #x00000001 a_ack!134)))

(check-sat)
(exit)
