(declare-fun a_ack!298 () (_ BitVec 32))
(declare-fun b_ack!297 () (_ BitVec 32))
(assert (not (bvslt a_ack!298 #x00000000)))
(assert (bvslt b_ack!297 a_ack!298))
(assert (bvsle #x00000000 (bvsub b_ack!297 a_ack!298)))
(assert (not (bvsle #x00000001 (bvsub b_ack!297 a_ack!298))))

(check-sat)
(exit)
