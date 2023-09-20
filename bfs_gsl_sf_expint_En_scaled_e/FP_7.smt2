(declare-fun a_ack!77 () (_ BitVec 32))
(assert (not (bvslt a_ack!77 #x00000000)))
(assert (not (= #x00000000 a_ack!77)))
(assert (not (= #x00000001 a_ack!77)))
(assert (= #x00000002 a_ack!77))

(check-sat)
(exit)
