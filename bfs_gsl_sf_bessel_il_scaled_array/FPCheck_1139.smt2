(declare-fun b_ack!4037 () (_ BitVec 64))
(declare-fun a_ack!4038 () (_ BitVec 32))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4037) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4037) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!4038) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4037) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!4038)))
(assert (not (= #x00000000 a_ack!4038)))
(assert (not (= #x00000001 a_ack!4038)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!4037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!4037)
                       ((_ to_fp 11 53) b_ack!4037))
               ((_ to_fp 11 53) b_ack!4037))
       ((_ to_fp 11 53) b_ack!4037)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!4037))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!4037)
                       ((_ to_fp 11 53) b_ack!4037))
               ((_ to_fp 11 53) b_ack!4037))
       ((_ to_fp 11 53) b_ack!4037)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4038))
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!4037)
                      ((_ to_fp 11 53) b_ack!4037))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (not (bvslt (bvadd #x00000001 a_ack!4038) #x00000096)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 a_ack!4038)
                            (bvadd #x00000001 a_ack!4038)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4037)
                                   ((_ to_fp 11 53) b_ack!4037)))
                   a!1)))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!4037)
                 ((_ to_fp 11 53) b_ack!4037))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 a_ack!4038)
                            (bvadd #x00000001 a_ack!4038)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4037)
                                   ((_ to_fp 11 53) b_ack!4037)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!4037)
                           ((_ to_fp 11 53) b_ack!4037)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 a_ack!4038)
                            (bvadd #x00000001 a_ack!4038)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4037)
                                   ((_ to_fp 11 53) b_ack!4037))))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
                      a!1)
              a!2)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul (bvadd #x00000001 a_ack!4038)
                            (bvadd #x00000001 a_ack!4038)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4037)
                                   ((_ to_fp 11 53) b_ack!4037))))))
  (fp.lt a!2 ((_ to_fp 11 53) #x3ec965fea53d6e41)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4037)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4038))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40201f41823d0b7f)
                   (CF_log (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40221f41823d0b7f))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x40201f41823d0b7f))
         (CF_log (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x40221f41823d0b7f)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4037)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4038))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40201f41823d0b7f)
                   (CF_log (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40221f41823d0b7f))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (CF_log (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40221f41823d0b7f))))))
  (fp.eq a!3 ((_ to_fp 11 53) #x40201f41823d0b7f))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4037)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4038))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x410428a2f98d7287))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!4037)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!4038))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40201f41823d0b7f)
                   (CF_log (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40221f41823d0b7f))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!1)
    a!2))))

(check-sat)
(exit)
