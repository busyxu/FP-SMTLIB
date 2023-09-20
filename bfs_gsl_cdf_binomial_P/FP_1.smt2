(declare-fun p_ack!1 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!1) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) p_ack!1) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
