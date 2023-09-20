(declare-fun b_ack!0 () (_ BitVec 32))
(declare-fun a_ack!2 () (_ BitVec 32))
(declare-fun c_ack!1 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!0 #x00000000)))
(assert (not (bvslt a_ack!2 b_ack!0)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!0))
(assert (not (bvslt a_ack!2 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 a_ack!2))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2)))

(check-sat)
(exit)
