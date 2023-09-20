(declare-fun a_ack!1934 () (_ BitVec 32))
(declare-fun b_ack!1932 () (_ BitVec 32))
(declare-fun c_ack!1933 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!1934 #x00000000)))
(assert (not (bvslt b_ack!1932 #x00000000)))
(assert (= #x00000000 a_ack!1934))
(assert (not (bvslt b_ack!1932 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1933) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!1932))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1933))
                           ((_ to_fp 11 53) c_ack!1933)))))
  (FPCHECK_FDIV_UNDERFLOW a!1 #x3ff54d264f787eb7)))

(check-sat)
(exit)
