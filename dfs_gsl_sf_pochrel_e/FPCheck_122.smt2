(declare-fun a_ack!391 () (_ BitVec 64))
(declare-fun b_ack!390 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!390))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!391))))))
  (not a!1)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!391))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!390)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!390))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!391))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.abs ((_ to_fp 11 53) b_ack!390)))
         (CF_log (fp.abs ((_ to_fp 11 53) a_ack!391))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) a_ack!391))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!390))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!391))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!391))))))
  (fp.eq a!2 (fp.abs ((_ to_fp 11 53) b_ack!390))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!390))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!391))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3fb999999999999a)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!390) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!391) ((_ to_fp 11 53) #xbfe0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!391))
               ((_ to_fp 11 53) a_ack!391))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!391)))
       ((_ to_fp 11 53) a_ack!391)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!391))
                           ((_ to_fp 11 53) b_ack!390))
                   ((_ to_fp 11 53) b_ack!390))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 ((_ to_fp 11 53) a_ack!391)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) a_ack!391))
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!391))
                           ((_ to_fp 11 53) b_ack!390)))))
  (fp.eq a!1 ((_ to_fp 11 53) b_ack!390))))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  ((_ to_fp 11 53) a_ack!391))
                          ((_ to_fp 11 53) b_ack!390))
                  ((_ to_fp 11 53) #x4024000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!391))
                           ((_ to_fp 11 53) b_ack!390))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!390)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.lt a!2 ((_ to_fp 11 53) #x5fba20bd700c2c3d)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!391))
                           ((_ to_fp 11 53) b_ack!390))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!390)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (fp.div roundNearestTiesToEven
                             ((_ to_fp 11 53) #x40325e4f7b2737fa)
                             (CF_log a!2))
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (bvslt #x00000014 a!3))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) a_ack!391))
                           ((_ to_fp 11 53) b_ack!390))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!390)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!3 ((_ fp.to_sbv 32)
             roundTowardZero
             (fp.add roundNearestTiesToEven
                     (fp.div roundNearestTiesToEven
                             ((_ to_fp 11 53) #x40325e4f7b2737fa)
                             (CF_log a!2))
                     ((_ to_fp 11 53) #x3ff0000000000000)))))
  (bvsle #x00000002 a!3)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!390)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FADD_OVERFLOW
    #xbf56c16c16c16c17
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fb5555555555555)
            (fp.div roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x4028000000000000))))))

(check-sat)
(exit)
