(declare-fun a_ack!956 () (_ BitVec 32))
(declare-fun b_ack!954 () (_ BitVec 32))
(declare-fun c_ack!955 () (_ BitVec 32))
(assert (not (bvslt a_ack!956 #x00000000)))
(assert (not (bvslt b_ack!954 #x00000000)))
(assert (not (bvslt c_ack!955 #x00000000)))
(assert (not (bvslt b_ack!954 #x00000000)))
(assert (not (bvslt (bvadd a_ack!956 c_ack!955) b_ack!954)))
(assert (= #x00000000 (bvand (bvadd a_ack!956 b_ack!954 c_ack!955) #x00000001)))
(assert (not (bvslt a_ack!956 #x00000000)))
(assert (bvslt b_ack!954 #x00000000))

(check-sat)
(exit)
