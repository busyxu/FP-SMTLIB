(declare-fun x_ack!1768 () (_ BitVec 64))
(declare-fun a_ack!1767 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1768) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1768) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1768) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1768) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1768) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!1768) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3fdb333333333333))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1768) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1768) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) #x0000000000000000)
                ((_ to_fp 11 53) a_ack!1767))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) #x0000000000000000)
               ((_ to_fp 11 53) a_ack!1767))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1768)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x0010000000000000))))
  (fp.geq (fp.abs (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!1768)
                          ((_ to_fp 11 53) #x0000000000000000)))
          a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 a!1)
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1767)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!1767)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1767)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1767)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!1)
                           a!3)
                   a!3)))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         a!4
                         ((_ to_fp 11 53) #x4010000000000000)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 (fp.abs a!3)))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!1))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           a!2)
                   a!2)))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) a_ack!1767))
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (not (fp.gt a!5 ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ddb7cdfd9d7bdbb)
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)))))
  (fp.gt a!2 a!3))))
(assert (fp.leq (fp.div roundNearestTiesToEven
                (fp.add roundNearestTiesToEven
                        ((_ to_fp 11 53) #x0000000000000000)
                        ((_ to_fp 11 53) a_ack!1767))
                ((_ to_fp 11 53) #x4000000000000000))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.div roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x0000000000000000)
                       ((_ to_fp 11 53) a_ack!1767))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1768)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 (fp.abs a!1))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) a_ack!1767))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           a!4)
                   a!4)))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) #x4010000000000000)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 (fp.abs a!4))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) a_ack!1767))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           a!3)
                   a!3)))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   a!3)))
  (fp.eq a!6
         (fp.div roundNearestTiesToEven
                 a!5
                 ((_ to_fp 11 53) #x4010000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) a_ack!1767))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           a!3)
                   a!3)))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4010000000000000)))))
  (fp.eq a!6 a!3)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) a_ack!1767))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           a!3)
                   a!3)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (not (fp.gt a!6 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ddb7cdfd9d7bdbb)
                         a!1)
                 ((_ to_fp 11 53) #x3ddb7cdfd9d7bdbb))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ddb7cdfd9d7bdbb)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ddb7cdfd9d7bdbb))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) a_ack!1767))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)))))
  (fp.gt a!3
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ddb7cdfd9d7bdbb)
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1768)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 a!2)
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           a!4)
                   a!4)))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) #x4010000000000000)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 (fp.abs a!4))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           a!3)
                   a!3)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!6 a!1)
         (fp.add roundNearestTiesToEven
                 a!3
                 (fp.div roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) #x4010000000000000))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           a!3)
                   a!3)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (fp.eq a!7 a!1))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           a!3)
                   a!3)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (not (fp.gt a!6 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!1))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)))))
  (fp.gt a!3
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ddb7cdfd9d7bdbb)
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.leq (fp.div roundNearestTiesToEven
                  a!1
                  ((_ to_fp 11 53) #x4000000000000000))
          ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4000000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1768)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 a!2)
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           a!2)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)))))
  (not (fp.eq (fp.abs a!4) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           a!4)
                   a!4)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           a!4))))
  (fp.eq a!6 a!4)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           a!4)
                   a!4)))
  (fp.eq (fp.div roundNearestTiesToEven a!5 a!4)
         (fp.mul roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x8000000000000000)
                         a!2)
                 a!4)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!2)
                           a!4)
                   a!4)))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         a!5
                         ((_ to_fp 11 53) #x4010000000000000)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 (fp.abs a!4))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!4)
                           a!3)
                   a!3)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (not (fp.gt a!6 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ddb7cdfd9d7bdbb)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)))))
  (fp.gt a!3 a!4)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.leq (fp.div roundNearestTiesToEven
                  (fp.div roundNearestTiesToEven
                          a!1
                          ((_ to_fp 11 53) #x4000000000000000))
                  ((_ to_fp 11 53) #x4000000000000000))
          ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.div roundNearestTiesToEven
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4000000000000000))
                 ((_ to_fp 11 53) #x4000000000000000))
         ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1768)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 (fp.abs a!2))
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1767)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs a!3)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4)))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!5 a!4)
                         ((_ to_fp 11 53) #x4010000000000000)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 (fp.abs a!4))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1767)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs a!2)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!3)))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!5 a!3)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   a!3)))
  (fp.eq a!6
         (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!5 a!3)
                 ((_ to_fp 11 53) #x4010000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1767)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs a!2)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!3)))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!5 a!3)
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!3)
                           ((_ to_fp 11 53) #x4010000000000000)))))
  (fp.eq a!6 a!3)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1767)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs a!2)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!3)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!5 a!3)
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (not (fp.gt a!6 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   (fp.abs a!2))))))
  (fp.gt a!3
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ddb7cdfd9d7bdbb)
                 a!4))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.leq a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt a!2 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1768)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2)
                   a!2)))
  (not (fp.eq a!3
              (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) x_ack!1768)
                      ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2))))
  (fp.eq a!3 a!2)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 a!3)
         ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2)
                   a!2)))
  (not (fp.eq a!3
              (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) x_ack!1768)
                      ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2))))
  (fp.eq a!3 a!2)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2))))
(let ((a!4 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  a!3))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!4))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
  (not (fp.eq a!4
              (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) x_ack!1768)
                      ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2))))
(let ((a!4 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)))))
  (not (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)))))
  (fp.eq a!4
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 a!3)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2)
                   a!2)))
  (not (fp.eq a!3
              (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!1767)
                      ((_ to_fp 11 53) #x3ff0000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1767)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2))))
  (fp.eq a!3 a!2)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2)
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!4))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           a!5)
                   a!5)))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         a!6
                         ((_ to_fp 11 53) #x4010000000000000)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 (fp.abs a!5)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5)
                           a!4)
                   a!4)))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!7 a!2)
         (fp.add roundNearestTiesToEven
                 a!4
                 (fp.div roundNearestTiesToEven
                         a!6
                         ((_ to_fp 11 53) #x4010000000000000)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5)
                           a!4)
                   a!4)))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (fp.eq a!8 a!2)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2)))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5)
                           a!4)
                   a!4)))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (not (fp.gt a!7 ((_ to_fp 11 53) #x0000000000000000))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           a!2))))
(let ((a!4 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)))))
  (fp.gt a!4
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ddb7cdfd9d7bdbb)
                 (fp.div roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x4000000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.leq (fp.div roundNearestTiesToEven
                  a!2
                  ((_ to_fp 11 53) #x4000000000000000))
          ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.div roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4000000000000000))
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1768)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  a!2
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq a!3
              (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) x_ack!1768)
                      ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.gt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 a!3)
         ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  a!2
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq a!3
              (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) x_ack!1768)
                      ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  a!3))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!4))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
  (not (fp.eq a!4
              (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) x_ack!1768)
                      ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)))))
  (not (fp.eq a!4 ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)))))
  (fp.eq a!4
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 a!3)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  a!2
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.eq a!3
              (fp.sub roundNearestTiesToEven
                      ((_ to_fp 11 53) a_ack!1767)
                      ((_ to_fp 11 53) #x3ff0000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!1767)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!4))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           a!5)
                   a!5)))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         a!6
                         ((_ to_fp 11 53) #x4010000000000000)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fe0000000000000)
                 (fp.abs a!5)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5)
                           a!4)
                   a!4)))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!7
                 (fp.div roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x4000000000000000)))
         (fp.add roundNearestTiesToEven
                 a!4
                 (fp.div roundNearestTiesToEven
                         a!6
                         ((_ to_fp 11 53) #x4010000000000000)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5)
                           a!4)
                   a!4)))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!7
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (fp.eq a!8
         (fp.div roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4000000000000000)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1767)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1768)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!3))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!5)
                           a!4)
                   a!4)))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.add roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x4010000000000000))))))
  (not (fp.gt a!7 ((_ to_fp 11 53) #x0000000000000000))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ddb7cdfd9d7bdbb)
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!1768)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!3)))))
  (fp.gt a!4 a!5))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.leq (fp.div roundNearestTiesToEven
                  (fp.div roundNearestTiesToEven
                          a!2
                          ((_ to_fp 11 53) #x4000000000000000))
                  ((_ to_fp 11 53) #x4000000000000000))
          ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (fp.lt (fp.div roundNearestTiesToEven
                 (fp.div roundNearestTiesToEven
                         a!2
                         ((_ to_fp 11 53) #x4000000000000000))
                 ((_ to_fp 11 53) #x4000000000000000))
         ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1768)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!1767))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x_ack!1768)
            ((_ to_fp 11 53) #x0000000000000000))
    (fp.div roundNearestTiesToEven
            (fp.div roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4000000000000000))))))

(check-sat)
(exit)
