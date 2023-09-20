(declare-fun a_ack!3487 () (_ BitVec 32))
(declare-fun b_ack!3485 () (_ BitVec 32))
(declare-fun c_ack!3486 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!3487 #x00000000)))
(assert (not (bvslt b_ack!3485 a_ack!3487)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!3487 #x00000000)))
(assert (not (= #x00000000 a_ack!3487)))
(assert (not (= #x00000001 a_ack!3487)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3486) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!3486))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!3487 a_ack!3487))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!3487))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3486) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3487)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3486)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3487))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!3486)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3487))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!3486)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3487))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!3486)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3487))
            ((_ to_fp 11 53) #x3ff051eb851eb852))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3486)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3487))
                   ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!5 (CF_acos (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3486)
                                    ((_ to_fp 11 53)
                                      roundNearestTiesToEven
                                      a_ack!3487))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)))
      (a!6 (CF_pow (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff8000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!5))
                   #x3fe5555555555555)))
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
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40b2000000000000)
                                   a!6)
                           a!6)
                   a!6))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xc01c000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
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
                   ((_ to_fp 11 53) #x4092000000000000))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.abs a!4)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407c700000000000)
                                   a!7)))))
  (FPCHECK_FADD_OVERFLOW
    a!8
    (fp.abs (fp.div roundNearestTiesToEven
                    a!9
                    ((_ to_fp 11 53) #x7ff0000000000001))))))))))

(check-sat)
(exit)
