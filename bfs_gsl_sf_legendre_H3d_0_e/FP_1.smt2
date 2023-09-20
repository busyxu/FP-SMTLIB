(declare-fun b_ack!1 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
