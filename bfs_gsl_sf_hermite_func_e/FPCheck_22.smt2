(declare-fun a_ack!94 () (_ BitVec 32))
(declare-fun b_ack!93 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!94 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!93) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!94))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!93))
                           ((_ to_fp 11 53) b_ack!93)))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3cb0000000000000
    (fp.abs (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff54d264f787eb7))))))

(check-sat)
(exit)
