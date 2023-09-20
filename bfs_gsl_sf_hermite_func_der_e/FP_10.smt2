(declare-fun a_ack!176 () (_ BitVec 32))
(declare-fun b_ack!175 () (_ BitVec 32))
(assert (not (bvslt a_ack!176 #x00000000)))
(assert (not (bvslt b_ack!175 #x00000000)))
(assert (not (= #x00000000 a_ack!176)))
(assert (= #x00000001 a_ack!176))

(check-sat)
(exit)
