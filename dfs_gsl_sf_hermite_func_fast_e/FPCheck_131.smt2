(declare-fun a_ack!575 () (_ BitVec 32))
(declare-fun b_ack!574 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (bvslt a_ack!575 #x000003e8))
(assert (not (bvslt a_ack!575 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!574) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!575)))
(assert (not (= #x00000001 a_ack!575)))
(assert (bvsle #x00000002 a_ack!575))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!574))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!574))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
  (fp.gt (fp.abs (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!574))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!574))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (CF_log (fp.abs (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))))
  (fp.geq a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (bvsle #x00000003 a_ack!575))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                           ((_ to_fp 11 53) b_ack!574))
                   ((_ to_fp 11 53) #x3fe8093870155910))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!574))
                           a!1)
                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (CF_log (fp.abs a!2))
                     ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!3))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                                   ((_ to_fp 11 53) b_ack!574))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fea20bd700c2c3e)
                           a!5))))
  (not (fp.gt (fp.abs a!6) ((_ to_fp 11 53) #x3ff0000000000000)))))))))
(assert (bvsle #x00000004 a_ack!575))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!574))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd)
                                   ((_ to_fp 11 53) b_ack!574))
                           ((_ to_fp 11 53) #x3fe8093870155910)))))
(let ((a!2 (CF_log (fp.abs (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))))))
(let ((a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       a!2
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3fe0fefbe1c2b6ca))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)))))
  (FPCHECK_FMUL_OVERFLOW #x3febb67ae8584caa a!4))))))

(check-sat)
(exit)
