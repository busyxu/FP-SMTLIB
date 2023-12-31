(declare-fun b_ack!1237 () (_ BitVec 64))
(declare-fun a_ack!1239 () (_ BitVec 32))
(declare-fun c_ack!1238 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1237) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1239 #x00000000)))
(assert (not (= #x00000000 a_ack!1239)))
(assert (not (= #x00000001 a_ack!1239)))
(assert (not (= #x00000002 a_ack!1239)))
(assert (not (= #x00000003 a_ack!1239)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1237) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!1238) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1238) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1237) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1237) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000004 a_ack!1239))
(assert (bvsle #x00000005 a_ack!1239))
(assert (bvsle #x00000006 a_ack!1239))
(assert (bvsle #x00000007 a_ack!1239))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x401c000000000000)
                                   ((_ to_fp 11 53) b_ack!1237))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW a!1 c_ack!1238)))

(check-sat)
(exit)
