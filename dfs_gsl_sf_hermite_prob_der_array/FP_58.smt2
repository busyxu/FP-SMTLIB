(declare-fun b_ack!1194 () (_ BitVec 32))
(declare-fun a_ack!1196 () (_ BitVec 32))
(declare-fun c_ack!1195 () (_ BitVec 64))
(assert (not (bvslt b_ack!1194 #x00000000)))
(assert (not (bvslt a_ack!1196 #x00000000)))
(assert (not (= #x00000000 b_ack!1194)))
(assert (not (= #x00000001 b_ack!1194)))
(assert (= #x00000000 a_ack!1196))
(assert (not (bvslt b_ack!1194 #x00000000)))
(assert (not (= #x00000000 b_ack!1194)))
(assert (not (= #x00000001 b_ack!1194)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1195) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1195))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000001 b_ack!1194)))

(check-sat)
(exit)
