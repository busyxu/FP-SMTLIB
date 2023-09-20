(declare-fun a_ack!437 () (_ BitVec 32))
(declare-fun b_ack!436 () (_ BitVec 64))
(assert (not (bvslt a_ack!437 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!437) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!437)))
(assert (not (= #x00000000 a_ack!437)))
(assert (= #x00000001 a_ack!437))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!436))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!436))
       ((_ to_fp 11 53) #x3ff4cccccccccccd)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!436)
                           ((_ to_fp 11 53) b_ack!436))
                   ((_ to_fp 11 53) #xbc12d6775460a6b3))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                         a!1)
                 ((_ to_fp 11 53) #x3c9e76d4fa744d95))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!436)
                           ((_ to_fp 11 53) b_ack!436))
                   ((_ to_fp 11 53) #xbc12d6775460a6b3))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3c9e76d4fa744d95))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!436)
                                  ((_ to_fp 11 53) b_ack!436)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!436)
                                   ((_ to_fp 11 53) b_ack!436))
                           ((_ to_fp 11 53) #xbc12d6775460a6b3)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!436)
                                   ((_ to_fp 11 53) b_ack!436))
                           a!1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!436)
                           ((_ to_fp 11 53) b_ack!436)))))
  (fp.eq a!2 a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!436)
                                   ((_ to_fp 11 53) b_ack!436))
                           ((_ to_fp 11 53) #xbc12d6775460a6b3)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!436)
                                   ((_ to_fp 11 53) b_ack!436))
                           ((_ to_fp 11 53) #xbc12d6775460a6b3)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!436)
                                   ((_ to_fp 11 53) b_ack!436))
                           a!1)
                   a!1)))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!436)
                 ((_ to_fp 11 53) b_ack!436))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!436)
                                   ((_ to_fp 11 53) b_ack!436))
                           ((_ to_fp 11 53) #xbc12d6775460a6b3)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbd23fdfbc45c52ea)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!436)
                                   ((_ to_fp 11 53) b_ack!436))
                           a!1))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #xbd23fdfbc45c52ea))
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) b_ack!436)
                         ((_ to_fp 11 53) b_ack!436))
                 a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3c9e76d4fa744d95)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!436)
                                   ((_ to_fp 11 53) b_ack!436))
                           ((_ to_fp 11 53) #xbc12d6775460a6b3)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbd23fdfbc45c52ea)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!436)
                                   ((_ to_fp 11 53) b_ack!436))
                           a!1))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!436)
                                   ((_ to_fp 11 53) b_ack!436))
                           a!1))))
  (fp.eq a!3 ((_ to_fp 11 53) #xbd23fdfbc45c52ea))))))

(check-sat)
(exit)
