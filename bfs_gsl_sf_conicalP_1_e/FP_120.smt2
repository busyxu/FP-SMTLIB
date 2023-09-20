(declare-fun b_ack!1915 () (_ BitVec 64))
(declare-fun a_ack!1916 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1915) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1916) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1915) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1915) ((_ to_fp 11 53) #x3fb999999999999a))))

(check-sat)
(exit)
