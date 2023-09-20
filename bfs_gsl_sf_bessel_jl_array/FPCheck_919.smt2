(declare-fun a_ack!2899 () (_ BitVec 32))
(declare-fun b_ack!2898 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!2899 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!2899) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!2899)))
(assert (not (= #x00000000 a_ack!2899)))
(assert (not (= #x00000001 a_ack!2899)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!2899))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!2898)
                      ((_ to_fp 11 53) b_ack!2898))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvmul (bvadd #x00000001 a_ack!2899)
                           (bvadd #x00000001 a_ack!2899))
                    a_ack!2899))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!2898))
              (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!2899))
       ((_ to_fp 11 53) #x407965fea53d6e3a)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2898) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!2899))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2898)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!2899))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x3f947ae147ae147b))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2898)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!2899))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2898)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!2899))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fef5c28f5c28f5c)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2898)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!2899))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff051eb851eb852)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2898)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!2899))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fec28f5c28f5c29)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2898)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!2899))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3ff1eb851eb851ec)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!2898)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!2899))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x7ff8000000000001)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x7ff8000000000001))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x40dda9c000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x41168f0c00000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x41275e8a00000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2)))))
  (FPCHECK_FADD_UNDERFLOW
    a!3
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4119f74400000000)
            (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!2 a!2)
                    a!2)))))))

(check-sat)
(exit)
