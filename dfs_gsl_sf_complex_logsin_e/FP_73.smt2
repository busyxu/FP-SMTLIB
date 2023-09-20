(declare-fun b_ack!1216 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1216) ((_ to_fp 11 53) #x404e000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1216) ((_ to_fp 11 53) #xc04e000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1216))
       ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
