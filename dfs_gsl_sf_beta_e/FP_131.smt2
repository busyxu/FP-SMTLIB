(declare-fun a_ack!1259 () (_ BitVec 64))
(declare-fun b_ack!1258 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1259) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1258) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1259) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1258) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
