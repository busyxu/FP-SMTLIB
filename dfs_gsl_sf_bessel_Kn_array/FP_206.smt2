(declare-fun a_ack!6034 () (_ BitVec 32))
(declare-fun b_ack!6033 () (_ BitVec 32))
(assert (not (bvslt a_ack!6034 #x00000000)))
(assert (bvslt b_ack!6033 a_ack!6034))

(check-sat)
(exit)
