(declare-fun a_ack!1952 () (_ BitVec 32))
(declare-fun b_ack!1950 () (_ BitVec 32))
(declare-fun c_ack!1951 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!1952 #x00000000)))
(assert (not (bvslt b_ack!1950 #x00000000)))
(assert (= #x00000000 a_ack!1952))
(assert (not (bvslt b_ack!1950 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1951) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!1950))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!1951))
                           ((_ to_fp 11 53) c_ack!1951)))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3cb0000000000000
    (fp.abs (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff54d264f787eb7))))))

(check-sat)
(exit)
