(declare-fun b_ack!1450 () (_ BitVec 32))
(declare-fun a_ack!1452 () (_ BitVec 32))
(declare-fun c_ack!1451 () (_ BitVec 64))
(assert (not (bvslt b_ack!1450 #x00000000)))
(assert (not (bvslt a_ack!1452 #x00000000)))
(assert (not (= #x00000000 b_ack!1450)))
(assert (not (= #x00000001 b_ack!1450)))
(assert (not (= #x00000000 a_ack!1452)))
(assert (not (= #x00000001 a_ack!1452)))
(assert (not (bvslt (bvsub b_ack!1450 a_ack!1452) #x00000000)))
(assert (not (bvslt (bvsub b_ack!1450 a_ack!1452) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!1450 a_ack!1452))))
(assert (= #x00000001 (bvsub b_ack!1450 a_ack!1452)))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!1450 a_ack!1452)) #x00000000)))
(assert (not (= #xffffffff (bvsub b_ack!1450 a_ack!1452))))
(assert (not (= #x00000000 (bvsub b_ack!1450 a_ack!1452))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1451) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!1451))
            ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
