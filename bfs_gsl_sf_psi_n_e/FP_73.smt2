(declare-fun a_ack!1392 () (_ BitVec 32))
(declare-fun b_ack!1391 () (_ BitVec 64))
(assert (= #x00000000 a_ack!1392))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1391) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1391) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1391) ((_ to_fp 11 53) #xc000000000000000)))

(check-sat)
(exit)
