(declare-fun a_ack!1378 () (_ BitVec 32))
(declare-fun b_ack!1376 () (_ BitVec 32))
(declare-fun c_ack!1377 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1378 #x00000000)))
(assert (not (bvslt b_ack!1376 a_ack!1378)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!1376)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1377) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1377) ((_ to_fp 11 53) #x4020000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1377) ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1377) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1377) ((_ to_fp 11 53) #x4020000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW #x4030000000000000 c_ack!1377))

(check-sat)
(exit)
