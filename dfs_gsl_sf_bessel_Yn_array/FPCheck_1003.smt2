(declare-fun a_ack!4613 () (_ BitVec 32))
(declare-fun b_ack!4611 () (_ BitVec 32))
(declare-fun c_ack!4612 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!4613 #x00000000)))
(assert (not (bvslt b_ack!4611 a_ack!4613)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4612) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!4613 #x00000000)))
(assert (not (= #x00000000 a_ack!4613)))
(assert (not (= #x00000001 a_ack!4613)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4612) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4612) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!4612))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!4613 a_ack!4613))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!4613))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4612) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4613)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4612)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4613))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4612)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4613))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4612)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4613))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4612)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4613))
            ((_ to_fp 11 53) #x3ff051eb851eb852))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4612)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4613))
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4054400000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x407ce00000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4078100000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           (fp.mul roundNearestTiesToEven a!1 a!1)))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.mul roundNearestTiesToEven a!1 a!1))
            a!2)
    #x4092000000000000))))

(check-sat)
(exit)
