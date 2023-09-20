(declare-fun a_ack!114 () (_ BitVec 32))
(assert (not (= #x00000000 a_ack!114)))
(assert (not (= #x00000001 a_ack!114)))
(assert (not (bvslt a_ack!114 #x00000000)))

(check-sat)
(exit)
