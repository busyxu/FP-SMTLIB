(declare-fun a_ack!3199 () (_ BitVec 32))
(declare-fun b_ack!3197 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun c_ack!3198 () (_ BitVec 64))
(assert (not (bvslt a_ack!3199 #x00000000)))
(assert (not (bvslt b_ack!3197 #x00000000)))
(assert (not (= #x00000000 a_ack!3199)))
(assert (= #x00000001 a_ack!3199))
(assert (not (bvsle #x00000002 b_ack!3197)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) c_ack!3198))
                           ((_ to_fp 11 53) c_ack!3198))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3198)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (CF_exp a!1))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) roundNearestTiesToEven b_ack!3197)
            ((_ to_fp 11 53) #x3cb0000000000000))
    (fp.abs a!2)))))

(check-sat)
(exit)
