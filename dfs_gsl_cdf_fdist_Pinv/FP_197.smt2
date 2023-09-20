(declare-fun x_ack!4657 () (_ BitVec 64))
(declare-fun nu1_ack!4655 () (_ BitVec 64))
(declare-fun nu2_ack!4656 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4657) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!4657) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!4655) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!4656) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!4657) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4657) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!4657) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!4655)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!4656)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!4657) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!4657) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!4657) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!4657) ((_ to_fp 11 53) #x3fb999999999999a))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!4655)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!4656)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!4655)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!4656)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.geq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!4655)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!4656)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!4655)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!4656)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!4655)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!4656)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!4655)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!4656)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!4655)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!4656)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!4655)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!4656)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!4655)
                    ((_ to_fp 11 53) #x4000000000000000))
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!4656)
                    ((_ to_fp 11 53) #x4000000000000000)))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!4655)
               ((_ to_fp 11 53) #x4000000000000000))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu2_ack!4656)
               ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!4655)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu2_ack!4656)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!4655)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!4656)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) nu2_ack!4656)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!4655)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu2_ack!4656)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu2_ack!4656)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) nu1_ack!4655)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!4655)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x40142eb8f3a779b9))
                 a!1)
         ((_ to_fp 11 53) #x40142eb8f3a779b9))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x40142eb8f3a779b9))
                 ((_ to_fp 11 53) #x40142eb8f3a779b9))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff3e48f2c0326b5))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40142eb8f3a779b9))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000a72bcde822b8)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff007228b4cd147))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ffbc8a35d2b114e)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff3e48f2c0326b5))
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x40142eb8f3a779b9)))))
  (not (fp.eq (fp.mul roundNearestTiesToEven
                      (fp.div roundNearestTiesToEven a!2 a!3)
                      a!3)
              a!2)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000a72bcde822b8)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff007228b4cd147))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ffbc8a35d2b114e))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff3e48f2c0326b5))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x40142eb8f3a779b9))))))
  (not (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000a72bcde822b8)
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff007228b4cd147))
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ffbc8a35d2b114e)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff3e48f2c0326b5))
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x40142eb8f3a779b9)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!2
                 (fp.div roundNearestTiesToEven a!2 a!3))
         a!3))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!1 a!1))
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 (fp.mul roundNearestTiesToEven a!1 a!1))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!4655)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu1_ack!4655)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!1)
                 a!1)
         (fp.mul roundNearestTiesToEven a!1 a!1))))

(check-sat)
(exit)
