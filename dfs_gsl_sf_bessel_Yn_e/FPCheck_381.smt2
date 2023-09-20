(declare-fun a_ack!1224 () (_ BitVec 32))
(declare-fun b_ack!1223 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!1224 #x00000000)))
(assert (not (= #x00000000 a_ack!1224)))
(assert (not (= #x00000001 a_ack!1224)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1223) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1223) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) b_ack!1223))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!1224 a_ack!1224))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!1224))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1223) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1224)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1223)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1224))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1223)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1224))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1223)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1224))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1223)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1224)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1223)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1224))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1223)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1224)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1223)
               ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1224))
       ((_ to_fp 11 53) #x3fef5c28f5c28f5c)))
(assert (let ((a!1 (CF_log (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fff7b7011437f07)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1223)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1224))))))
(let ((a!2 (CF_pow (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff8000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3feef6e02286fe0e)))
                   #x3fe5555555555555)))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x40b2000000000000)
                                   a!2)
                           a!2)
                   a!2)))
  (FPCHECK_FDIV_OVERFLOW #xc07c700000000000 a!3)))))

(check-sat)
(exit)
