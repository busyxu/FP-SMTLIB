(declare-fun b_ack!1086 () (_ BitVec 32))
(declare-fun a_ack!1088 () (_ BitVec 32))
(declare-fun c_ack!1087 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!1086 #x00000000)))
(assert (not (bvslt a_ack!1088 b_ack!1086)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1087) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1087) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!1086))
(assert (not (bvslt a_ack!1088 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1087) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1087) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!1088)))
(assert (not (= #x00000001 a_ack!1088)))
(assert (not (= #x00000002 a_ack!1088)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!1087) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1088)))

(check-sat)
(exit)
