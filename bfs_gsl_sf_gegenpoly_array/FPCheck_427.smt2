(declare-fun b_ack!1695 () (_ BitVec 64))
(declare-fun a_ack!1696 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1695) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1696 #x00000000)))
(assert (not (= #x00000000 a_ack!1696)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1695) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!1696))
(assert (bvsle #x00000003 a_ack!1696))
(assert (bvsle #x00000004 a_ack!1696))
(assert (bvsle #x00000005 a_ack!1696))
(assert (bvsle #x00000006 a_ack!1696))
(assert (bvsle #x00000007 a_ack!1696))
(assert (bvsle #x00000008 a_ack!1696))
(assert (bvsle #x00000009 a_ack!1696))
(assert (bvsle #x0000000a a_ack!1696))
(assert (bvsle #x0000000b a_ack!1696))
(assert (bvsle #x0000000c a_ack!1696))
(assert (bvsle #x0000000d a_ack!1696))
(assert (FPCHECK_FADD_UNDERFLOW
  #x402a000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!1695))))

(check-sat)
(exit)
