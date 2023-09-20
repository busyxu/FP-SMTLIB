(declare-fun b_ack!1137 () (_ BitVec 32))
(declare-fun a_ack!1139 () (_ BitVec 32))
(declare-fun c_ack!1138 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1137 #x00000000)))
(assert (not (bvslt a_ack!1139 b_ack!1137)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1138) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1138) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1137)))
(assert (= #x00000000 b_ack!1137))
(assert (not (= a_ack!1139 b_ack!1137)))
(assert (not (= a_ack!1139 (bvadd #x00000001 b_ack!1137))))
(assert (bvsle (bvadd #x00000002 b_ack!1137) a_ack!1139))
(assert (bvsle (bvadd #x00000003 b_ack!1137) a_ack!1139))
(assert (bvsle (bvadd #x00000004 b_ack!1137) a_ack!1139))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001 (bvmul #x00000002 (bvadd #x00000004 b_ack!1137))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.div roundNearestTiesToEven
            ((_ to_fp 11 53) #x4010000000000000)
            ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000004 b_ack!1137 b_ack!1137)))
    a!1)))

(check-sat)
(exit)
