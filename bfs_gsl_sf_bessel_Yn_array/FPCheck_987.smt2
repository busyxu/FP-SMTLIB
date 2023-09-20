(declare-fun a_ack!4507 () (_ BitVec 32))
(declare-fun b_ack!4505 () (_ BitVec 32))
(declare-fun c_ack!4506 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!4507 #x00000000)))
(assert (not (bvslt b_ack!4505 a_ack!4507)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4506) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!4507 #x00000000)))
(assert (not (= #x00000000 a_ack!4507)))
(assert (not (= #x00000001 a_ack!4507)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4506) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4506) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!4506))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!4507 a_ack!4507))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!4507))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4506) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4507)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4506)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4507))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4506)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4507))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4506)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4507))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4506)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4507))
            ((_ to_fp 11 53) #x3ff051eb851eb852))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4506)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4507))
            ((_ to_fp 11 53) #x3fec28f5c28f5c29))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4506)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4507))
            ((_ to_fp 11 53) #x3ff1eb851eb851ec))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4506)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4507))
                           ((_ to_fp 11 53) #x7ff8000000000001)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.mul roundNearestTiesToEven a!1 a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40dda9c000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41168f0c00000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41275e8a00000000)
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4119f74400000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   (fp.mul roundNearestTiesToEven a!1 a!1))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3e97992db8c89605)
                                   a!1)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   a!4)))
  (FPCHECK_FDIV_ACCURACY a!5 #x7ff0000000000001)))))))

(check-sat)
(exit)
