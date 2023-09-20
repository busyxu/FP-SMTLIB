(declare-fun x_ack!3974 () (_ BitVec 64))
(declare-fun nu_ack!3973 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3974) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3974) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3974) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!3974) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3974) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3974) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3974)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3fdb333333333333))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3974) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3974) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu_ack!3973)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) nu_ack!3973)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!1)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!3973)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!3973)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu_ack!3973)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!3973)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.sub roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53) #x7ff8000000000001)))))
  (not a!1)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!3973)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fe0000000000000)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.leq (fp.div roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3f48406003b2ae5a))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3fe0000000000000))))))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu_ack!3973)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!3973)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!3973)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!3973)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!3973)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!3973)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x4330000000000000))))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fefd70a3d70a3d7)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.add roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53) #x40c3880000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.div roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!3973)
                                  ((_ to_fp 11 53) #x4000000000000000))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) nu_ack!3973)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (not (fp.lt (fp.abs a!2) ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4)))
  (not (fp.lt (fp.abs a!5) ((_ to_fp 11 53) #x3cb0000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3))))
(let ((a!7 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  a!5
                                  (fp.add roundNearestTiesToEven a!6 a!5)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!7))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3))))
(let ((a!8 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!7 a!5)
                                   (fp.mul roundNearestTiesToEven a!5 a!6))))))
  (not (fp.lt a!8 ((_ to_fp 11 53) #x3cb0000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3))))
(let ((a!9 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!8 a!5)
                                   (fp.mul roundNearestTiesToEven a!5 a!6))
                           (fp.mul roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!5 a!6)
                                   a!7)))))
  (not (fp.lt (fp.abs a!9) ((_ to_fp 11 53) #x3cb0000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!10 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!9 a!11))
              ((_ to_fp 11 53) #x3cb0000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!11 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!13 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            (fp.add roundNearestTiesToEven
                                    a!12
                                    (fp.mul roundNearestTiesToEven a!9 a!10))))))
  (not (fp.lt a!13 ((_ to_fp 11 53) #x3cb0000000000000))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!12 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!14 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11)))))
  (not (fp.lt (fp.abs a!14) ((_ to_fp 11 53) #x3cb0000000000000))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4022000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    a!12))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!14 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!15
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11))
                    a!13)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!13 a!16))
              ((_ to_fp 11 53) #x3cb0000000000000))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4022000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4024000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    a!12))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!15 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11))
                    a!13)))
(let ((a!18 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!13 a!14)
                            (fp.add roundNearestTiesToEven
                                    a!17
                                    (fp.mul roundNearestTiesToEven a!13 a!14))))))
  (not (fp.lt a!18 ((_ to_fp 11 53) #x3cb0000000000000)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4022000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!15 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4026000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    a!12))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!16 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!17
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11))
                    a!13)))
(let ((a!19 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!13 a!14)
                            a!15)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    (fp.mul roundNearestTiesToEven a!13 a!14))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!15)))))
  (not (fp.lt (fp.abs a!19) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4022000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!15 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4026000000000000))))
      (a!16 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4028000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    a!12))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!18 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!13 a!14)
                            a!15)
                    a!16))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!19
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11))
                    a!13)))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!20
                                    (fp.mul roundNearestTiesToEven a!13 a!14))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!15))
                    a!17)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!17 a!21))
              ((_ to_fp 11 53) #x3cb0000000000000)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4022000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!15 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4026000000000000))))
      (a!16 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4028000000000000))))
      (a!18 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402a000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    a!12))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!19 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!13 a!14)
                            a!15)
                    a!16))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!20
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11))
                    a!13)))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!21
                                    (fp.mul roundNearestTiesToEven a!13 a!14))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!15))
                    a!17)))
(let ((a!23 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!17 a!18)
                            (fp.add roundNearestTiesToEven
                                    a!22
                                    (fp.mul roundNearestTiesToEven a!17 a!18))))))
  (not (fp.lt a!23 ((_ to_fp 11 53) #x3cb0000000000000))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4022000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!15 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4026000000000000))))
      (a!16 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4028000000000000))))
      (a!18 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402a000000000000))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402c000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    a!12))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!20 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!13 a!14)
                            a!15)
                    a!16))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!21
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11))
                    a!13)))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!22
                                    (fp.mul roundNearestTiesToEven a!13 a!14))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!15))
                    a!17)))
(let ((a!24 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!17 a!18)
                            a!19)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!23
                                    (fp.mul roundNearestTiesToEven a!17 a!18))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!17 a!18)
                                    a!19)))))
  (not (fp.lt (fp.abs a!24) ((_ to_fp 11 53) #x3cb0000000000000))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4022000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!15 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4026000000000000))))
      (a!16 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4028000000000000))))
      (a!18 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402a000000000000))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402c000000000000))))
      (a!20 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402e000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    a!12))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!22 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!13 a!14)
                            a!15)
                    a!16))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!23
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11))
                    a!13)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!17 a!18)
                            a!19)
                    a!20))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!24
                                    (fp.mul roundNearestTiesToEven a!13 a!14))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!15))
                    a!17)))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!25
                                    (fp.mul roundNearestTiesToEven a!17 a!18))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!17 a!18)
                                    a!19))
                    a!21)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!21 a!26))
              ((_ to_fp 11 53) #x3cb0000000000000))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4022000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!15 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4026000000000000))))
      (a!16 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4028000000000000))))
      (a!18 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402a000000000000))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402c000000000000))))
      (a!20 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402e000000000000))))
      (a!22 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4030000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    a!12))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!23 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!13 a!14)
                            a!15)
                    a!16))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!24
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11))
                    a!13)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!17 a!18)
                            a!19)
                    a!20))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!25
                                    (fp.mul roundNearestTiesToEven a!13 a!14))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!15))
                    a!17)))
(let ((a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!26
                                    (fp.mul roundNearestTiesToEven a!17 a!18))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!17 a!18)
                                    a!19))
                    a!21)))
(let ((a!28 (fp.abs (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!21 a!22)
                            (fp.add roundNearestTiesToEven
                                    a!27
                                    (fp.mul roundNearestTiesToEven a!21 a!22))))))
  (not (fp.lt a!28 ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4022000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!15 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4026000000000000))))
      (a!16 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4028000000000000))))
      (a!18 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402a000000000000))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402c000000000000))))
      (a!20 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402e000000000000))))
      (a!22 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4030000000000000))))
      (a!23 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4031000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    a!12))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!24 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!13 a!14)
                            a!15)
                    a!16))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!25
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11))
                    a!13)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!17 a!18)
                            a!19)
                    a!20))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!26
                                    (fp.mul roundNearestTiesToEven a!13 a!14))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!15))
                    a!17)))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!27
                                    (fp.mul roundNearestTiesToEven a!17 a!18))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!17 a!18)
                                    a!19))
                    a!21)))
(let ((a!29 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!21 a!22)
                            a!23)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!28
                                    (fp.mul roundNearestTiesToEven a!21 a!22))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!21 a!22)
                                    a!23)))))
  (not (fp.lt (fp.abs a!29) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4022000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!15 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4026000000000000))))
      (a!16 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4028000000000000))))
      (a!18 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402a000000000000))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402c000000000000))))
      (a!20 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402e000000000000))))
      (a!22 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4030000000000000))))
      (a!23 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4031000000000000))))
      (a!24 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4032000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    a!12))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!26 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!13 a!14)
                            a!15)
                    a!16))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!27
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11))
                    a!13)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!17 a!18)
                            a!19)
                    a!20))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!28
                                    (fp.mul roundNearestTiesToEven a!13 a!14))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!15))
                    a!17)))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!21 a!22)
                            a!23)
                    a!24))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!29
                                    (fp.mul roundNearestTiesToEven a!17 a!18))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!17 a!18)
                                    a!19))
                    a!21)))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!30
                                    (fp.mul roundNearestTiesToEven a!21 a!22))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!21 a!22)
                                    a!23))
                    a!25)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!25 a!31))
              ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!3973)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!8 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!3973)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!10 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x401c000000000000))))
      (a!11 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4020000000000000))))
      (a!12 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4022000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4024000000000000))))
      (a!15 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4026000000000000))))
      (a!16 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4028000000000000))))
      (a!18 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402a000000000000))))
      (a!19 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402c000000000000))))
      (a!20 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x402e000000000000))))
      (a!22 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4030000000000000))))
      (a!23 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4031000000000000))))
      (a!24 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4032000000000000))))
      (a!26 (fp.div roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) nu_ack!3973)
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x4033000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)
                           a!3)
                   a!4))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!2)
                            a!3))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven a!5 a!6)
                           a!7)
                   a!8)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!9 a!10)
                            a!11)
                    a!12))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!27 a!5)
                                    (fp.mul roundNearestTiesToEven a!5 a!6))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!5 a!6)
                                    a!7))
                    a!9)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!13 a!14)
                            a!15)
                    a!16))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!28
                                    (fp.mul roundNearestTiesToEven a!9 a!10))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!11))
                    a!13)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!17 a!18)
                            a!19)
                    a!20))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!29
                                    (fp.mul roundNearestTiesToEven a!13 a!14))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!15))
                    a!17)))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven a!21 a!22)
                            a!23)
                    a!24))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!30
                                    (fp.mul roundNearestTiesToEven a!17 a!18))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!17 a!18)
                                    a!19))
                    a!21)))
(let ((a!32 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!31
                                    (fp.mul roundNearestTiesToEven a!21 a!22))
                            (fp.mul roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!21 a!22)
                                    a!23))
                    a!25)))
  (FPCHECK_FDIV_ZERO
    (fp.mul roundNearestTiesToEven a!25 a!26)
    (fp.add roundNearestTiesToEven
            a!32
            (fp.mul roundNearestTiesToEven a!25 a!26)))))))))))))

(check-sat)
(exit)
