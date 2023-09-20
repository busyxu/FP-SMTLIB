(declare-fun a_ack!1791 () (_ BitVec 32))
(declare-fun b_ack!1790 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!1791 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1790) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1790) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!1791) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1790) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1790) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!1791)))
(assert (not (= #x00000000 a_ack!1791)))
(assert (not (= #x00000001 a_ack!1791)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!1791))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!1790)
                      ((_ to_fp 11 53) b_ack!1790))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvmul (bvadd #x00000001 a_ack!1791)
                           (bvadd #x00000001 a_ack!1791))
                    a_ack!1791))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!1790))
              (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!1791))
       ((_ to_fp 11 53) #x407965fea53d6e3a)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1790) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!1791))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1790)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!1791))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1790)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!1791))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb6d3d801d5bc8d)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3fb3b64821c4c9d1)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x3fb6d3d801d5bc8d))
         (fp.mul roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3fb3b64821c4c9d1))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1790)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!1791))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb6d3d801d5bc8d)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3fb3b64821c4c9d1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3fb3b64821c4c9d1)))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3fb6d3d801d5bc8d))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1790)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!1791))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb6d3d801d5bc8d)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3fb3b64821c4c9d1)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    a!2))))

(check-sat)
(exit)
