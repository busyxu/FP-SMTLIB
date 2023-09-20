(declare-fun limit_ack!3198 () (_ BitVec 64))
(declare-fun epsabs_ack!3203 () (_ BitVec 64))
(declare-fun a_ack!3204 () (_ BitVec 64))
(declare-fun x1_ack!3199 () (_ BitVec 64))
(declare-fun x2_ack!3200 () (_ BitVec 64))
(declare-fun x3_ack!3201 () (_ BitVec 64))
(declare-fun b_ack!3202 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!3198)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3203)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3199) ((_ to_fp 11 53) a_ack!3204))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3200) ((_ to_fp 11 53) x1_ack!3199))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3201) ((_ to_fp 11 53) x2_ack!3200))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3202) ((_ to_fp 11 53) x3_ack!3201))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3204)
                                   ((_ to_fp 11 53) x1_ack!3199))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3199)
                                   ((_ to_fp 11 53) a_ack!3204)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3204)
                                   ((_ to_fp 11 53) x1_ack!3199)))
                   a!1)))
  (FPCHECK_FDIV_ACCURACY
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
