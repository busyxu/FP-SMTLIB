(declare-fun b_ack!167 () (_ BitVec 32))
(declare-fun a_ack!168 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt b_ack!167 #x00000000)))
(assert (not (bvslt a_ack!168 b_ack!167)))
(assert (not (= #x00000000 b_ack!167)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!168 b_ack!167))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvsub a_ack!168 b_ack!167))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (CF_log (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!168))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_ACCURACY #x3fe0000000000000 a!1)))

(check-sat)
(exit)
