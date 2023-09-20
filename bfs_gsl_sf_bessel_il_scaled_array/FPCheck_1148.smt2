(declare-fun b_ack!4061 () (_ BitVec 64))
(declare-fun a_ack!4062 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4061) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4061) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!4062) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4061) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!4062)))
(assert (not (= #x00000000 a_ack!4062)))
(assert (not (= #x00000001 a_ack!4062)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!4061))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!4061)
                       ((_ to_fp 11 53) b_ack!4061))
               ((_ to_fp 11 53) b_ack!4061))
       ((_ to_fp 11 53) b_ack!4061)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!4061))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!4061)
                       ((_ to_fp 11 53) b_ack!4061))
               ((_ to_fp 11 53) b_ack!4061))
       ((_ to_fp 11 53) b_ack!4061)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4062))
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!4061)
                      ((_ to_fp 11 53) b_ack!4061))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (not (bvslt (bvadd #x00000001 a_ack!4062) #x00000096)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 a_ack!4062)
                            (bvadd #x00000001 a_ack!4062)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4061)
                                   ((_ to_fp 11 53) b_ack!4061)))
                   a!1)))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!4061)
                 ((_ to_fp 11 53) b_ack!4061))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 a_ack!4062)
                            (bvadd #x00000001 a_ack!4062)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4061)
                                   ((_ to_fp 11 53) b_ack!4061)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!4061)
                           ((_ to_fp 11 53) b_ack!4061)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 a_ack!4062)
                            (bvadd #x00000001 a_ack!4062)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4061)
                                   ((_ to_fp 11 53) b_ack!4061))))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
                      a!1)
              a!2)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 a_ack!4062)
                            (bvadd #x00000001 a_ack!4062)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4061)
                                   ((_ to_fp 11 53) b_ack!4061))))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3ec965fea53d6e41))))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!4061)
                                  ((_ to_fp 11 53) #x407ea80000000000))
                          ((_ to_fp 11 53) #x407ea80000000000))
                  ((_ to_fp 11 53) b_ack!4061))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!4061)
                                  ((_ to_fp 11 53) #x407ea80000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!4061)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!4061)
                       ((_ to_fp 11 53) #x407ea80000000000)))
       ((_ to_fp 11 53) #x407ea80000000000)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!4061)
               ((_ to_fp 11 53) #x407ea80000000000))
       ((_ to_fp 11 53) #x410428a2f98d7287)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x8000000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4061)
          ((_ to_fp 11 53) #x407ea80000000000))))

(check-sat)
(exit)
