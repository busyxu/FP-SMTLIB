(declare-fun key_ack!3555 () (_ BitVec 32))
(declare-fun limit_ack!3554 () (_ BitVec 64))
(declare-fun epsabs_ack!3553 () (_ BitVec 64))
(declare-fun b_ack!3552 () (_ BitVec 64))
(declare-fun a_ack!3556 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt key_ack!3555 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!3555)))
(assert (= #x00000001 key_ack!3555))
(assert (not (bvult #x00000000000003e8 limit_ack!3554)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3553)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3556)
                                   ((_ to_fp 11 53) b_ack!3552))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3556)
                           ((_ to_fp 11 53) b_ack!3552))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3552)
                           ((_ to_fp 11 53) a_ack!3556)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fee5f178e7c6229)))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3fe7ba9f9be3a1d6)))))
      (a!11 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fd9f95df119fd62)))))
      (a!12 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.mul roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3fd9f95df119fd62))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc092f69f826d57)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!4)
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!5)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd1e6b1713d8644)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!7)
                                   ((_ to_fp 11 53) #x7ff8000000000001))
                           (fp.div roundNearestTiesToEven
                                   (CF_log a!8)
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!13 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd86fe74ee32b3d)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!11)
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.div roundNearestTiesToEven
                                    (CF_log a!12)
                                    ((_ to_fp 11 53) #x7ff8000000000001))))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3fdabfd7e03c2fa6))
                            a!6)
                    a!9)))
  (FPCHECK_FADD_ACCURACY a!10 a!13))))))

(check-sat)
(exit)
