(declare-fun b_ack!1875 () (_ BitVec 64))
(declare-fun a_ack!1876 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1875) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1876 #x00000000)))
(assert (not (= #x00000000 a_ack!1876)))
(assert (not (= #x00000001 a_ack!1876)))
(assert (not (= #x00000002 a_ack!1876)))
(assert (not (= #x00000003 a_ack!1876)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1875) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1875) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1875) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvsle #x00000004 a_ack!1876))
(assert (not (bvsle #x00000005 a_ack!1876)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3cb0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1876)))

(check-sat)
(exit)
