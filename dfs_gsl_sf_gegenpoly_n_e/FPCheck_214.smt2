(declare-fun b_ack!1087 () (_ BitVec 64))
(declare-fun a_ack!1089 () (_ BitVec 32))
(declare-fun c_ack!1088 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1087) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1089 #x00000000)))
(assert (not (= #x00000000 a_ack!1089)))
(assert (not (= #x00000001 a_ack!1089)))
(assert (not (= #x00000002 a_ack!1089)))
(assert (not (= #x00000003 a_ack!1089)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1087) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) c_ack!1088) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1088) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1087) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!1087) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000004 a_ack!1089))
(assert (bvsle #x00000005 a_ack!1089))
(assert (bvsle #x00000006 a_ack!1089))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.sub roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4018000000000000)
                  ((_ to_fp 11 53) b_ack!1087))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
