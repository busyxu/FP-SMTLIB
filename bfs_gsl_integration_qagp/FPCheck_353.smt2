(declare-fun limit_ack!5333 () (_ BitVec 64))
(declare-fun epsabs_ack!5338 () (_ BitVec 64))
(declare-fun a_ack!5339 () (_ BitVec 64))
(declare-fun x1_ack!5334 () (_ BitVec 64))
(declare-fun x2_ack!5335 () (_ BitVec 64))
(declare-fun x3_ack!5336 () (_ BitVec 64))
(declare-fun b_ack!5337 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5333)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5338)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5334) ((_ to_fp 11 53) a_ack!5339))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5335) ((_ to_fp 11 53) x1_ack!5334))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5336) ((_ to_fp 11 53) x2_ack!5335))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5337) ((_ to_fp 11 53) x3_ack!5336))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5339)
                                   ((_ to_fp 11 53) x1_ack!5334))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5339)
                           ((_ to_fp 11 53) x1_ack!5334))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5334)
                                   ((_ to_fp 11 53) a_ack!5339)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
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
    #x3fac08f7021999a2
    (fp.add roundNearestTiesToEven a!3 a!4)))))

(check-sat)
(exit)
