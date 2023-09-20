(declare-fun b_ack!1527 () (_ BitVec 32))
(declare-fun a_ack!1529 () (_ BitVec 32))
(declare-fun c_ack!1528 () (_ BitVec 64))
(assert (not (bvslt b_ack!1527 #x00000000)))
(assert (not (bvslt a_ack!1529 b_ack!1527)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1528) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
