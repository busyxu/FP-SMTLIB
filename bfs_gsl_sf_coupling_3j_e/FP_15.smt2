(declare-fun a_ack!998 () (_ BitVec 32))
(declare-fun b_ack!993 () (_ BitVec 32))
(declare-fun c_ack!994 () (_ BitVec 32))
(declare-fun d_ack!995 () (_ BitVec 32))
(declare-fun e_ack!996 () (_ BitVec 32))
(declare-fun f_ack!997 () (_ BitVec 32))
(assert (not (bvslt a_ack!998 #x00000000)))
(assert (not (bvslt b_ack!993 #x00000000)))
(assert (not (bvslt c_ack!994 #x00000000)))
(assert (not (bvslt b_ack!993 #x00000000)))
(assert (not (bvslt (bvadd a_ack!998 c_ack!994) b_ack!993)))
(assert (= #x00000000 (bvand (bvadd a_ack!998 b_ack!993 c_ack!994) #x00000001)))
(assert (not (bvslt a_ack!998 #x00000000)))
(assert (not (bvslt b_ack!993 #x00000000)))
(assert (not (bvslt c_ack!994 #x00000000)))
(assert (= #x00000000 (bvand (bvadd a_ack!998 d_ack!995) #x00000001)))
(assert (= #x00000000 (bvand (bvadd b_ack!993 e_ack!996) #x00000001)))
(assert (= #x00000000 (bvand (bvadd c_ack!994 f_ack!997) #x00000001)))
(assert (= #x00000000 (bvadd d_ack!995 e_ack!996 f_ack!997)))
(assert (= #x00000000 d_ack!995))
(assert (= #x00000000 e_ack!996))
(assert (not (= #x00000000 f_ack!997)))

(check-sat)
(exit)
