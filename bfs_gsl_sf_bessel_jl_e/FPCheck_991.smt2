(declare-fun a_ack!3068 () (_ BitVec 32))
(declare-fun b_ack!3067 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!3068 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3067) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3067) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!3068)))
(assert (not (= #x00000001 a_ack!3068)))
(assert (not (= #x00000002 a_ack!3068)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3068)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!3067)
                      ((_ to_fp 11 53) b_ack!3067))
              a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd (bvmul a_ack!3068 a_ack!3068) a_ack!3068))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!3067))
              a!1))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3068)
       ((_ to_fp 11 53) #x407965fea53d6e3a)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3067) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3068)
                     ((_ to_fp 11 53) #x3fe0000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3067)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3068)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!3067)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!3068)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!3067)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!3068)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!3067)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!3068)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x3ff051eb851eb852))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3067)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3068)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x7ff8000000000001)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x7ff8000000000001)))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x7ff8000000000001))
                   (CF_acos (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1))))
      (a!9 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc01c000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x7ff8000000000001))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   a!2)
                           a!2)))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40b2000000000000)
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555)))
      (a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    a!2)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           a!3)
                   ((_ to_fp 11 53) #x4092000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (CF_pow (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff8000000000000)
                                   a!5)
                           #x3fe5555555555555))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            a!4
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x407c700000000000)
                    a!8))
    (fp.div roundNearestTiesToEven a!10 ((_ to_fp 11 53) #x7ff0000000000001)))))))))

(check-sat)
(exit)
