(declare-fun a_ack!1163 () (_ BitVec 64))
(declare-fun b_ack!1161 () (_ BitVec 64))
(declare-fun c_ack!1162 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1163) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1161) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1162) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
