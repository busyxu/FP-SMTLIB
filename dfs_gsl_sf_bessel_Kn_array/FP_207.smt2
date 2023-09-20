(declare-fun a_ack!6036 () (_ BitVec 32))
(declare-fun b_ack!6035 () (_ BitVec 32))
(assert (not (bvslt a_ack!6036 #x00000000)))
(assert (bvslt b_ack!6035 a_ack!6036))
(assert (bvsle #x00000000 (bvsub b_ack!6035 a_ack!6036)))

(check-sat)
(exit)
