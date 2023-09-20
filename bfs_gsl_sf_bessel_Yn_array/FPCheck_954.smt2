(declare-fun a_ack!4378 () (_ BitVec 32))
(declare-fun b_ack!4376 () (_ BitVec 32))
(declare-fun c_ack!4377 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!4378 #x00000000)))
(assert (not (bvslt b_ack!4376 a_ack!4378)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!4378 #x00000000)))
(assert (not (= #x00000000 a_ack!4378)))
(assert (not (= #x00000001 a_ack!4378)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4377) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!4377))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!4378 a_ack!4378))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!4378))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4377) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4378)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4377)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4378))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4377)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4378))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4377)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4378))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4377)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4378))
            ((_ to_fp 11 53) #x3ff051eb851eb852))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4377)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4378))
            ((_ to_fp 11 53) #x3fec28f5c28f5c29))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4377)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4378))
            ((_ to_fp 11 53) #x3ff1eb851eb851ec))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4377)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4378))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!4 (CF_acos (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4377)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!4378))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)))
      (a!5 (CF_pow (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff8000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!4))
                   #x3fe5555555555555)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4078100000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbf16781948b0fcd7)
                    a!2)
            a!3)
    (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven a!5 a!5) a!5))))))

(check-sat)
(exit)
