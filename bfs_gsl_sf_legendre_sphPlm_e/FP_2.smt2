(declare-fun b_ack!36 () (_ BitVec 32))
(declare-fun a_ack!38 () (_ BitVec 32))
(declare-fun c_ack!37 () (_ BitVec 64))
(assert (not (bvslt b_ack!36 #x00000000)))
(assert (not (bvslt a_ack!38 b_ack!36)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!37) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
