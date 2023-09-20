(declare-fun a_ack!2852 () (_ BitVec 32))
(declare-fun b_ack!2850 () (_ BitVec 32))
(declare-fun c_ack!2851 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!2852 #x00000000)))
(assert (not (bvslt b_ack!2850 a_ack!2852)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2851) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!2852 #x00000000)))
(assert (not (= #x00000000 a_ack!2852)))
(assert (not (= #x00000001 a_ack!2852)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2851) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2851) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!2851))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!2852 a_ack!2852))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!2852))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2851) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2852)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2851)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2852))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!2851)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2852))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2851)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2852))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2851)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2852)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2851)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2852))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2851)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2852)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!2851)
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!2852)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fff14ce15b24728)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2851)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2852)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2851)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2852)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x3fff14ce15b24728)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fff14ce15b24728)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2851)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2852))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fff14ce15b24728)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fff14ce15b24728)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2851)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2852))))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!2851)
                 ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2852)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) c_ack!2851)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2852))
       ((_ to_fp 11 53) #x3fef5c28f5c28f5c)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!2851)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2852))
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!2851)
                  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2852)))))

(check-sat)
(exit)
