(declare-fun b_ack!536 () (_ BitVec 32))
(declare-fun a_ack!537 () (_ BitVec 32))
(assert (not (bvult a_ack!537 b_ack!536)))
(assert (not (= b_ack!536 a_ack!537)))
(assert (not (= #x00000000 b_ack!536)))
(assert (not (bvule a_ack!537 #x000000aa)))
(assert (not (bvult (bvmul #x00000002 b_ack!536) a_ack!537)))
(assert (not (bvult (bvsub a_ack!537 b_ack!536) #x00000040)))
(assert (not (bvult a_ack!537 b_ack!536)))
(assert (not (= b_ack!536 a_ack!537)))
(assert (= #x00000000 b_ack!536))

(check-sat)
(exit)
