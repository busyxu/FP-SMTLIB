(declare-fun a_ack!6038 () (_ BitVec 32))
(declare-fun b_ack!6037 () (_ BitVec 32))
(assert (not (bvslt a_ack!6038 #x00000000)))
(assert (bvslt b_ack!6037 a_ack!6038))
(assert (bvsle #x00000000 (bvsub b_ack!6037 a_ack!6038)))
(assert (not (bvsle #x00000001 (bvsub b_ack!6037 a_ack!6038))))

(check-sat)
(exit)
