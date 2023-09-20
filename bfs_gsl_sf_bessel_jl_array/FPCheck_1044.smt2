(declare-fun a_ack!3285 () (_ BitVec 32))
(declare-fun b_ack!3284 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!3285 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3284) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3284) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!3285) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3284) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3284) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!3285)))
(assert (not (= #x00000000 a_ack!3285)))
(assert (not (= #x00000001 a_ack!3285)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3285))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!3284)
                      ((_ to_fp 11 53) b_ack!3284))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvmul (bvadd #x00000001 a_ack!3285)
                           (bvadd #x00000001 a_ack!3285))
                    a_ack!3285))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!3284))
              (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (not (fp.gt ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #x00000001 a_ack!3285))
            ((_ to_fp 11 53) #x407965fea53d6e3a))))
(assert (fp.gt ((_ to_fp 11 53) b_ack!3284) ((_ to_fp 11 53) #x408f400000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!3284)
       ((_ to_fp 11 53)
         roundNearestTiesToEven
         (bvmul (bvadd #x00000001 a_ack!3285) (bvadd #x00000001 a_ack!3285)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3285))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3284)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000))
                           ((_ to_fp 11 53) #x400921fb54442d18)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000))
                           ((_ to_fp 11 53) #x400921fb54442d18)))))
  (fp.eq a!3 ((_ to_fp 11 53) b_ack!3284))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!3285))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!3284)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3fd0000000000000))
                           ((_ to_fp 11 53) #x400921fb54442d18)))))
  (fp.eq (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) b_ack!3284) a!2)
         (fp.mul roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fd0000000000000))
                 ((_ to_fp 11 53) #x400921fb54442d18))))))
(assert (FPCHECK_FMUL_OVERFLOW #x4020000000000000 b_ack!3284))

(check-sat)
(exit)
