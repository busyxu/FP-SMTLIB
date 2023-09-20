(declare-fun a_ack!15 () (_ BitVec 32))
(declare-fun b_ack!14 () (_ BitVec 32))
(assert (bvslt a_ack!15 #x00000000))
(assert (bvsle #x00000000 (bvsub b_ack!14 a_ack!15)))
(assert (not (bvsle #x00000001 (bvsub b_ack!14 a_ack!15))))

(check-sat)
(exit)
