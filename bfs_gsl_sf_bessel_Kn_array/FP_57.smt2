(declare-fun a_ack!1396 () (_ BitVec 32))
(declare-fun b_ack!1394 () (_ BitVec 32))
(declare-fun c_ack!1395 () (_ BitVec 64))
(assert (not (bvslt a_ack!1396 #x00000000)))
(assert (not (bvslt b_ack!1394 a_ack!1396)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1395) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!1394)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1395) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!1395) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
