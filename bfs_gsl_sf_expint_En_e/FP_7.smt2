(declare-fun a_ack!88 () (_ BitVec 32))
(assert (not (bvslt a_ack!88 #x00000000)))
(assert (not (= #x00000000 a_ack!88)))
(assert (= #x00000001 a_ack!88))

(check-sat)
(exit)
