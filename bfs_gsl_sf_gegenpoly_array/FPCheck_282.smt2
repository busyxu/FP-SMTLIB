(declare-fun b_ack!1121 () (_ BitVec 64))
(declare-fun a_ack!1122 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1121) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1122 #x00000000)))
(assert (not (= #x00000000 a_ack!1122)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1121) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!1122))
(assert (bvsle #x00000003 a_ack!1122))
(assert (bvsle #x00000004 a_ack!1122))
(assert (bvsle #x00000005 a_ack!1122))
(assert (bvsle #x00000006 a_ack!1122))
(assert (bvsle #x00000007 a_ack!1122))
(assert (bvsle #x00000008 a_ack!1122))
(assert (bvsle #x00000009 a_ack!1122))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  (fp.sub roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4022000000000000)
                  ((_ to_fp 11 53) b_ack!1121))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
