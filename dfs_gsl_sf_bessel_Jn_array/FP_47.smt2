(declare-fun a_ack!1070 () (_ BitVec 32))
(declare-fun b_ack!1068 () (_ BitVec 32))
(declare-fun c_ack!1069 () (_ BitVec 64))
(assert (not (bvslt a_ack!1070 #x00000000)))
(assert (not (bvslt b_ack!1068 a_ack!1070)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1069) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!1068) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1069) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!1068)))
(assert (= #x00000000 b_ack!1068))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!1069))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1069))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1069))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1069))
            ((_ to_fp 11 53) #x4010000000000000))))

(check-sat)
(exit)
