(declare-fun x_ack!1955 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1955) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1955) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1955) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1955) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1955) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1955) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) x_ack!1955)
                        ((_ to_fp 11 53) #x3fe0000000000000)))
        ((_ to_fp 11 53) #x3fdb333333333333)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!1955)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1955)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1955)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1955)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) x_ack!1955)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) x_ack!1955)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1955)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1955)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1955)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) x_ack!1955)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc71eb851eb851f)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1955)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1955)
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
                                   ((_ to_fp 11 53) x_ack!1955)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1955)
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
                                   ((_ to_fp 11 53) x_ack!1955)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1955)
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
                                   ((_ to_fp 11 53) x_ack!1955)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1955)
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

(check-sat)
(exit)
