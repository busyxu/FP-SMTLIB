(declare-fun a_ack!3992 () (_ BitVec 32))
(declare-fun b_ack!3990 () (_ BitVec 32))
(declare-fun c_ack!3991 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!3992 #x00000000)))
(assert (not (bvslt b_ack!3990 a_ack!3992)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3991) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!3992 #x00000000)))
(assert (not (= #x00000000 a_ack!3992)))
(assert (not (= #x00000001 a_ack!3992)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3991) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3991) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!3991))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!3992 a_ack!3992))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!3992))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3991) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3991)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3992))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3991)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3992)))
                   ((_ to_fp 11 53) #x3fb3b64821c4c9d1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fb6d3d801d5bc8d)
                         a!1)
                 ((_ to_fp 11 53) #x3fb6d3d801d5bc8d))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3991)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3992)))
                   ((_ to_fp 11 53) #x3fb3b64821c4c9d1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fb6d3d801d5bc8d)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3fb6d3d801d5bc8d))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3991)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb6d3d801d5bc8d)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb3b64821c4c9d1))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fbb0ddfefa33bcd)
                         a!2)
                 ((_ to_fp 11 53) #x3fbb0ddfefa33bcd))
         a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3991)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb6d3d801d5bc8d)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb3b64821c4c9d1))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fbb0ddfefa33bcd)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x3fbb0ddfefa33bcd)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3991)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb6d3d801d5bc8d)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb3b64821c4c9d1))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc08d5b5f242061)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fbb0ddfefa33bcd)
                                   a!2)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!3
                 ((_ to_fp 11 53) #x3fc08d5b5f242061))
         (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fbb0ddfefa33bcd)
                         a!2)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3991)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb6d3d801d5bc8d)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fb3b64821c4c9d1))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc08d5b5f242061)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fbb0ddfefa33bcd)
                                   a!2)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fbb0ddfefa33bcd)
                                   a!2)))))
  (fp.eq a!4 ((_ to_fp 11 53) #x3fc08d5b5f242061)))))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!3991)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992))
            ((_ to_fp 11 53) #x3fef5c28f5c28f5c))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!3991)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992))
       ((_ to_fp 11 53) #x3ff051eb851eb852)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!3991)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992))
            ((_ to_fp 11 53) #x3fec28f5c28f5c29))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!3991)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992))
       ((_ to_fp 11 53) #x3ff1eb851eb851ec)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!3991)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992))
            ((_ to_fp 11 53) #x3feccccccccccccd))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!3991)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992))
       ((_ to_fp 11 53) #x3ff199999999999a)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3991)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3992)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f4c7bb53d325123)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3f32d5a4589d6aa7))))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3f52cd6288bcc7b8) a!2)))))

(check-sat)
(exit)
