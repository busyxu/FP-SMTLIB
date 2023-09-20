(declare-fun limit_ack!4801 () (_ BitVec 64))
(declare-fun epsabs_ack!4806 () (_ BitVec 64))
(declare-fun a_ack!4807 () (_ BitVec 64))
(declare-fun x1_ack!4802 () (_ BitVec 64))
(declare-fun x2_ack!4803 () (_ BitVec 64))
(declare-fun x3_ack!4804 () (_ BitVec 64))
(declare-fun b_ack!4805 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!4801)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!4806)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!4802) ((_ to_fp 11 53) a_ack!4807))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!4803) ((_ to_fp 11 53) x1_ack!4802))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!4804) ((_ to_fp 11 53) x2_ack!4803))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4805) ((_ to_fp 11 53) x3_ack!4804))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4807)
                                   ((_ to_fp 11 53) x1_ack!4802))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!4807)
                           ((_ to_fp 11 53) x1_ack!4802))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4802)
                                   ((_ to_fp 11 53) a_ack!4807)))
                   ((_ to_fp 11 53) #x3fefdc6c69272ae5))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.add roundNearestTiesToEven a!1 a!2)))
                   ((_ to_fp 11 53) #x7ff8000000000001))))
  (FPCHECK_FMUL_OVERFLOW
    #x3f87f35bdbca883f
    (fp.add roundNearestTiesToEven (fp.abs a!3) (fp.abs a!4))))))

(check-sat)
(exit)
