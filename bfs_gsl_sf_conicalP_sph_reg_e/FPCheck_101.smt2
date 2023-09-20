(declare-fun c_ack!353 () (_ BitVec 64))
(declare-fun a_ack!354 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!352 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_cosh ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!353) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!354 #xffffffff)))
(assert (= #xffffffff a_ack!354))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!353) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!353) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) c_ack!353)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe9884533d43651)
                   (CF_cosh (fp.mul roundNearestTiesToEven
                                    (CF_acos c_ack!353)
                                    ((_ to_fp 11 53) b_ack!352)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   (CF_acos c_ack!353)
                                   ((_ to_fp 11 53) b_ack!352)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   (fp.abs a!3))))
  (FPCHECK_FMUL_ACCURACY a!4 a!5)))))

(check-sat)
(exit)
