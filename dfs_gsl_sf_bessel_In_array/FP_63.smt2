(declare-fun c_ack!1624 () (_ BitVec 64))
(declare-fun a_ack!1625 () (_ BitVec 32))
(declare-fun b_ack!1623 () (_ BitVec 32))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1624))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!1623 a_ack!1625)))
(assert (not (bvslt a_ack!1625 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1624) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!1623))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1624))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!1624))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!1624))
             ((_ to_fp 11 53) #x4020000000000000))))

(check-sat)
(exit)
