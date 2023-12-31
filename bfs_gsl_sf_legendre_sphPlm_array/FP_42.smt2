(declare-fun b_ack!1008 () (_ BitVec 32))
(declare-fun a_ack!1010 () (_ BitVec 32))
(declare-fun c_ack!1009 () (_ BitVec 64))
(assert (not (bvslt b_ack!1008 #x00000000)))
(assert (not (bvslt a_ack!1010 b_ack!1008)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1009) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1009) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1008)))
(assert (= #x00000000 b_ack!1008))
(assert (not (= a_ack!1010 b_ack!1008)))
(assert (not (= a_ack!1010 (bvadd #x00000001 b_ack!1008))))
(assert (bvsle (bvadd #x00000002 b_ack!1008) a_ack!1010))
(assert (bvsle (bvadd #x00000003 b_ack!1008) a_ack!1010))

(check-sat)
(exit)
