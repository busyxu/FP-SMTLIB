(declare-fun b_ack!1692 () (_ BitVec 32))
(declare-fun a_ack!1694 () (_ BitVec 32))
(declare-fun c_ack!1693 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!1692 #x00000000)))
(assert (not (bvslt a_ack!1694 b_ack!1692)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1693) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1693) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1692)))
(assert (= #x00000000 b_ack!1692))
(assert (not (= a_ack!1694 b_ack!1692)))
(assert (not (= a_ack!1694 (bvadd #x00000001 b_ack!1692))))
(assert (bvsle (bvadd #x00000002 b_ack!1692) a_ack!1694))
(assert (FPCHECK_FMUL_UNDERFLOW
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 b_ack!1692 b_ack!1692))
  #x3fd20dd750429b6d))

(check-sat)
(exit)
