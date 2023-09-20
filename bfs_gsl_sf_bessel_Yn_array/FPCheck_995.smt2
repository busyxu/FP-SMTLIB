(declare-fun a_ack!4543 () (_ BitVec 32))
(declare-fun b_ack!4541 () (_ BitVec 32))
(declare-fun c_ack!4542 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!4543 #x00000000)))
(assert (not (bvslt b_ack!4541 a_ack!4543)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4542) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!4543 #x00000000)))
(assert (not (= #x00000000 a_ack!4543)))
(assert (not (= #x00000001 a_ack!4543)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4542) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4542) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!4542))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!4543 a_ack!4543))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!4543))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4542) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4543)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4542)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4543))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4542)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4543))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4542)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4543))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4542)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4543))
            ((_ to_fp 11 53) #x3ff051eb851eb852))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4542)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4543))
            ((_ to_fp 11 53) #x3fec28f5c28f5c29))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4542)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4543))
            ((_ to_fp 11 53) #x3ff1eb851eb851ec))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4542)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4543))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!6 (CF_acos (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!4542)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!4543))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)))
      (a!7 (CF_pow (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff8000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!6))
                   #x3fe5555555555555)))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4151087940000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x419670bb30000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41b4db647e000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x419e600000000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!7 a!7)
                                   a!7))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!7 a!7)
                           a!7)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3f7875663075fde5)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    a!2))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4054400000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x407ce00000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4078100000000000)
                            (fp.mul roundNearestTiesToEven a!2 a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41ba98410c000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!2)
                                   a!2))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!7 a!7)
                                    a!7)
                            ((_ to_fp 11 53) #x7ff0000000000001))))
      (a!13 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbf16781948b0fcd7)
                                    a!2)
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!7 a!7)
                            a!7))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41a6298b8a000000)
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!2)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!2)
                                   a!5)
                           ((_ to_fp 11 53) #x4182fc0000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc183458478000000)
                           a!8))))
  (FPCHECK_FADD_UNDERFLOW (fp.add roundNearestTiesToEven a!9 a!11) a!13))))))))

(check-sat)
(exit)
