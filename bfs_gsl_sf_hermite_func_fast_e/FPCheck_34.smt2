(declare-fun a_ack!145 () (_ BitVec 32))
(declare-fun b_ack!144 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (bvslt a_ack!145 #x000003e8))
(assert (not (bvslt a_ack!145 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!144) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!145))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!144))
                           ((_ to_fp 11 53) b_ack!144)))))
  (FPCHECK_FDIV_UNDERFLOW a!1 #x3ff54d264f787eb7)))

(check-sat)
(exit)
