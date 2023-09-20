(declare-fun a_ack!152 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!151 () (_ BitVec 64))
(assert (not (bvslt a_ack!152 #x00000000)))
(assert (not (= #x00000000 a_ack!152)))
(assert (= #x00000001 a_ack!152))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!151))
                           ((_ to_fp 11 53) b_ack!151)))))
  (FPCHECK_FDIV_ACCURACY a!1 #x3ff54d264f787eb7)))

(check-sat)
(exit)
