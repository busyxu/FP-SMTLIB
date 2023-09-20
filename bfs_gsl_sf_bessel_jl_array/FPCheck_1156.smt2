(declare-fun a_ack!3629 () (_ BitVec 32))
(declare-fun b_ack!3628 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!3629 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3628) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3628) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!3629) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3628) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3628) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!3629)))
(assert (not (= #x00000000 a_ack!3629)))
(assert (not (= #x00000001 a_ack!3629)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3629))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!3628)
                      ((_ to_fp 11 53) b_ack!3628))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvmul (bvadd #x00000001 a_ack!3629)
                           (bvadd #x00000001 a_ack!3629))
                    a_ack!3629))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!3628))
              (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!3629))
       ((_ to_fp 11 53) #x407965fea53d6e3a)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!3628) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3629))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3628)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3629))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x3f947ae147ae147b))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3628)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3629))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3628)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3629))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fef5c28f5c28f5c)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3628)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3629))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff051eb851eb852)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3628)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3629))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fec28f5c28f5c29)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3628)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3629))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff1eb851eb851ec)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3628)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3629))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3feccccccccccccd)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3628)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3629))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff199999999999a)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3628)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3629))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4026000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4014000000000000)
                                   a!1))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FADD_OVERFLOW (fp.abs a!4) #x0000000000000000))))))

(check-sat)
(exit)
