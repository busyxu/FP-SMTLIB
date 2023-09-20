(declare-fun b_ack!3386 () (_ BitVec 64))
(declare-fun a_ack!3387 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3386) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!3387 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3386) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!3387)))
(assert (not (= #x00000001 a_ack!3387)))
(assert (not (= #x00000002 a_ack!3387)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3386))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3386)
                       ((_ to_fp 11 53) b_ack!3386))
               ((_ to_fp 11 53) b_ack!3386))
       ((_ to_fp 11 53) b_ack!3386)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!3386))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!3386)
                       ((_ to_fp 11 53) b_ack!3386))
               ((_ to_fp 11 53) b_ack!3386))
       ((_ to_fp 11 53) b_ack!3386)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3387)
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x4005bf0a8b145769))
                          ((_ to_fp 11 53) #x4005bf0a8b145769))
                  a!1)))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3387)
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3387)
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4005bf0a8b145769)))
         ((_ to_fp 11 53) #x4005bf0a8b145769))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!3387)
                                   ((_ to_fp 11 53) #x3ff8000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!3386)
                      ((_ to_fp 11 53) b_ack!3386))
              a!1))))
(assert (not (bvslt a_ack!3387 #x00000096)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!3387 a_ack!3387))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3386)
                           ((_ to_fp 11 53) b_ack!3386)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!3387 a_ack!3387))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!3386)
                 ((_ to_fp 11 53) b_ack!3386))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!3387 a_ack!3387))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3386)
                           ((_ to_fp 11 53) b_ack!3386)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!3386)
                         ((_ to_fp 11 53) b_ack!3386)))
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53)
                   roundNearestTiesToEven
                   (bvmul a_ack!3387 a_ack!3387))
                 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!3387 a_ack!3387))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3386)
                           ((_ to_fp 11 53) b_ack!3386)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!3387 a_ack!3387))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3386)
                           ((_ to_fp 11 53) b_ack!3386)))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  a!1)
                          a!1)
                  ((_ to_fp 11 53) #x3fe0000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!3387 a_ack!3387))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3386)
                           ((_ to_fp 11 53) b_ack!3386)))))
(let ((a!2 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3fe0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!3387 a_ack!3387))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3386)
                           ((_ to_fp 11 53) b_ack!3386)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!3387 a_ack!3387))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvmul a_ack!3387 a_ack!3387))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3386)
                           ((_ to_fp 11 53) b_ack!3386)))))
  (not (fp.lt a!1
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!2)))))
(assert (FPCHECK_FMUL_OVERFLOW b_ack!3386 b_ack!3386))

(check-sat)
(exit)
