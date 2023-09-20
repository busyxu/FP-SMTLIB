(declare-fun a_ack!2 () (_ BitVec 32))
(declare-fun b_ack!1 () (_ BitVec 64))
(assert (not (bvslt a_ack!2 #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
