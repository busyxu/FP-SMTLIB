(declare-fun a_ack!86 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun b_ack!85 () (_ BitVec 64))
(assert (not (bvslt a_ack!86 #x00000000)))
(assert (not (= #x00000000 a_ack!86)))
(assert (not (= #x00000001 a_ack!86)))
(assert (let ((a!1 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!85))
                           ((_ to_fp 11 53) b_ack!85)))))
  (FPCHECK_FMUL_ACCURACY a!1 #x3fe8093870155910)))

(check-sat)
(exit)
