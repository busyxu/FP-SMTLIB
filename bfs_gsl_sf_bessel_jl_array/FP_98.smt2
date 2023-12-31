(declare-fun a_ack!1321 () (_ BitVec 32))
(declare-fun b_ack!1320 () (_ BitVec 64))
(assert (not (bvslt a_ack!1321 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1320) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1320) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!1321) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1320) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1320) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!1321)))
(assert (not (= #x00000000 a_ack!1321)))
(assert (= #x00000001 a_ack!1321))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1320) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1320))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1320))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))

(check-sat)
(exit)
