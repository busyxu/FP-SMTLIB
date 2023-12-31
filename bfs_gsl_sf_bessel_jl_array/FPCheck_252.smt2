(declare-fun a_ack!847 () (_ BitVec 32))
(declare-fun b_ack!846 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!847 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!846) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!846) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!847) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!846) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!846) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!847)))
(assert (not (= #x00000000 a_ack!847)))
(assert (not (= #x00000001 a_ack!847)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!847))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!846)
                      ((_ to_fp 11 53) b_ack!846))
              (fp.div roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x4005bf0a8b145769))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #x00000001
                    (bvmul (bvadd #x00000001 a_ack!847)
                           (bvadd #x00000001 a_ack!847))
                    a_ack!847))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!846))
              (fp.add roundNearestTiesToEven
                      a!1
                      ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!847))
       ((_ to_fp 11 53) #x407965fea53d6e3a)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!846) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!847))
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!846)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!847))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         ((_ to_fp 11 53) #x3f947ae147ae147b))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!846)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!847))
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 a!1)))

(check-sat)
(exit)
