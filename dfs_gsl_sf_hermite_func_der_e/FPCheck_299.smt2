(declare-fun a_ack!1949 () (_ BitVec 32))
(declare-fun b_ack!1947 () (_ BitVec 32))
(declare-fun c_ack!1948 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!1949 #x00000000)))
(assert (not (bvslt b_ack!1947 #x00000000)))
(assert (= #x00000000 a_ack!1949))
(assert (not (bvslt b_ack!1947 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1948) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!1947))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1948))
                           ((_ to_fp 11 53) c_ack!1948)))))
  (FPCHECK_FMUL_OVERFLOW
    #x3cb0000000000000
    (fp.abs (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff54d264f787eb7))))))

(check-sat)
(exit)
