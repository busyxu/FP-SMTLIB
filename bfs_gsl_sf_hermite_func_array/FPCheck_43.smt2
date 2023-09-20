(declare-fun a_ack!159 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!158 () (_ BitVec 64))
(assert (not (bvslt a_ack!159 #x00000000)))
(assert (not (= #x00000000 a_ack!159)))
(assert (= #x00000001 a_ack!159))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!158))
                           ((_ to_fp 11 53) b_ack!158)))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3ff54d264f787eb7))
    #x3ff6a09e667f3bcd)))

(check-sat)
(exit)
