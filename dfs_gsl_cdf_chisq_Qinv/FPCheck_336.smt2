(declare-fun x_ack!982 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!982) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!982) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!982) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!982) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!982) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!982) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) x_ack!982)
                        ((_ to_fp 11 53) #x3fe0000000000000)))
        ((_ to_fp 11 53) #x3fdb333333333333)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!982)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!982)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) x_ack!982)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!982)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!982)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) x_ack!982)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc71eb851eb851f)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40a39a296f7d925e))
                           ((_ to_fp 11 53) #x40e052d26b2e45e4))
                   (fp.mul roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x40a39a296f7d925e)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x40e052d26b2e45e4)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc71eb851eb851f)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40a39a296f7d925e))
                           ((_ to_fp 11 53) #x40e052d26b2e45e4))
                   ((_ to_fp 11 53) #x40e052d26b2e45e4))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x40a39a296f7d925e))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc71eb851eb851f)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40a39a296f7d925e))
                           ((_ to_fp 11 53) #x40e052d26b2e45e4)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x40f06c1c55b78f20))
                 a!2)
         ((_ to_fp 11 53) #x40f06c1c55b78f20)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc71eb851eb851f)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40a39a296f7d925e))
                           ((_ to_fp 11 53) #x40e052d26b2e45e4)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x40f06c1c55b78f20))
                 ((_ to_fp 11 53) #x40f06c1c55b78f20))
         a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc71eb851eb851f)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40a39a296f7d925e))
                           ((_ to_fp 11 53) #x40e052d26b2e45e4)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x40f06c1c55b78f20)))
                   ((_ to_fp 11 53) #x40e66c3e869b752a))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x40f06c1c55b78f20))))))
  (fp.eq a!4 ((_ to_fp 11 53) #x40e66c3e869b752a)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc71eb851eb851f)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40a39a296f7d925e))
                           ((_ to_fp 11 53) #x40e052d26b2e45e4)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x40f06c1c55b78f20)))
                   ((_ to_fp 11 53) #x40e66c3e869b752a))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!3
                 ((_ to_fp 11 53) #x40e66c3e869b752a))
         (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x40f06c1c55b78f20))))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc71eb851eb851f)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!982)
                                   ((_ to_fp 11 53) #x3fe0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40a39a296f7d925e))
                           ((_ to_fp 11 53) #x40e052d26b2e45e4)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x40f06c1c55b78f20)))
                   ((_ to_fp 11 53) #x40e66c3e869b752a))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!3)
                                   ((_ to_fp 11 53) #x40cad1d8cd4ee71d)))
                   ((_ to_fp 11 53) #x409ece5d2213c0cc))))
  (FPCHECK_FMUL_OVERFLOW a!1 a!4))))))

(check-sat)
(exit)
