(declare-fun a_ack!4140 () (_ BitVec 32))
(declare-fun b_ack!4139 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!4140 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4139) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4139) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!4140)))
(assert (not (= #x00000001 a_ack!4140)))
(assert (not (= #x00000002 a_ack!4140)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!4139)
                      ((_ to_fp 11 53) b_ack!4139))
              a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd (bvmul a_ack!4140 a_ack!4140) a_ack!4140))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!4139))
              a!1))))
(assert (not (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
            ((_ to_fp 11 53) #x407965fea53d6e3a))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4139) ((_ to_fp 11 53) #x408f400000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!4139))
                           ((_ to_fp 11 53) b_ack!4139))
                   a!4)))
(let ((a!6 (fp.abs (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.gt a!6 ((_ to_fp 11 53) #x5fefffffffffffff))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!4139))
                           ((_ to_fp 11 53) b_ack!4139))
                   a!4)))
(let ((a!6 (fp.abs (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.gt a!6 ((_ to_fp 11 53) #x5fefffffffffffff))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!4139))
                           ((_ to_fp 11 53) b_ack!4139))
                   a!4)))
(let ((a!6 (fp.abs (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.lt a!6 ((_ to_fp 11 53) #x2000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!4139))
                           ((_ to_fp 11 53) b_ack!4139))
                   a!4)))
(let ((a!6 (fp.abs (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt a!6 ((_ to_fp 11 53) #x2000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!4139))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!2)))))
  (not (fp.lt a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4)))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!4139))
                           ((_ to_fp 11 53) b_ack!4139))
                   a!5)))
(let ((a!7 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!8 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.div roundNearestTiesToEven a!2 a!3)
                                   a!7)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!8 ((_ to_fp 11 53) #x3cc0000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!6)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   (fp.div roundNearestTiesToEven a!3 a!5)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!7)
                           a!2))))
  (not (fp.gt (fp.abs a!8) ((_ to_fp 11 53) #x5fefffffffffffff)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!6)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   (fp.div roundNearestTiesToEven a!3 a!5)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!7)
                           a!2))))
  (not (fp.gt (fp.abs a!8) ((_ to_fp 11 53) #x5fefffffffffffff)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!6)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   (fp.div roundNearestTiesToEven a!3 a!5)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!7)
                           a!2))))
  (not (fp.lt (fp.abs a!8) ((_ to_fp 11 53) #x2000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!6)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   (fp.div roundNearestTiesToEven a!3 a!5)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!7)
                           a!2))))
  (not (fp.lt (fp.abs a!8) ((_ to_fp 11 53) #x2000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) b_ack!4139))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!3)))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!4139))
                           a!4))))
  (not (fp.lt a!5 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!9)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!11 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!6
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!10)
                                    a!2))
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!10)
                                    a!7)))))
(let ((a!12 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!6 a!8)
                                    a!11)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!12 ((_ to_fp 11 53) #x3cc0000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!9)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!6
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!8)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!10)
                            a!6))))
  (not (fp.gt (fp.abs a!11) ((_ to_fp 11 53) #x5fefffffffffffff))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!9)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!6
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!8)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!10)
                            a!6))))
  (not (fp.gt (fp.abs a!11) ((_ to_fp 11 53) #x5fefffffffffffff))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!9)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!6
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!8)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!10)
                            a!6))))
  (not (fp.lt (fp.abs a!11) ((_ to_fp 11 53) #x2000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!9)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!6
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!8)
                                    a!2))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!10)
                            a!6))))
  (not (fp.lt (fp.abs a!11) ((_ to_fp 11 53) #x2000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) b_ack!4139))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!4)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) b_ack!4139))
                           a!5))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!4139))
                           a!6))))
  (not (fp.lt a!7 ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!4139)
                                    a!1)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2)))
      (a!12 (fp.add roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!8)
                            a!10))))
(let ((a!15 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!14)
                                    a!6))
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!14)
                                    a!11)))))
(let ((a!16 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!12)
                                    a!15)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!16 ((_ to_fp 11 53) #x3cc0000000000000))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!12)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!11)
                                    a!6))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!13)
                            a!9))))
  (not (fp.gt (fp.abs a!14) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!12)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!11)
                                    a!6))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!13)
                            a!9))))
  (not (fp.gt (fp.abs a!14) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!12)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!11)
                                    a!6))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!13)
                            a!9))))
  (not (fp.lt (fp.abs a!14) ((_ to_fp 11 53) #x2000000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!12)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!11)
                                    a!6))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!13)
                            a!9))))
  (not (fp.lt (fp.abs a!14) ((_ to_fp 11 53) #x2000000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) b_ack!4139))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!5)))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) b_ack!4139))
                           a!6))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) b_ack!4139))
                           a!7))))
(let ((a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!4139))
                           a!8))))
  (not (fp.lt a!9 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!4139)
                                    a!1)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!17)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!14 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2)))
      (a!15 (fp.add roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!8)
                            a!13))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6)))
      (a!16 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!14))))
(let ((a!19 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!18)
                                    a!9))
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!18)
                                    a!15)))))
(let ((a!20 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!12 a!16)
                                    a!19)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!20 ((_ to_fp 11 53) #x3cc0000000000000)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!15)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!14)
                                    a!9))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!16)
                            a!12))))
  (not (fp.gt (fp.abs a!17) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!15)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!14)
                                    a!9))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!16)
                            a!12))))
  (not (fp.gt (fp.abs a!17) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!15)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!14)
                                    a!9))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!16)
                            a!12))))
  (not (fp.lt (fp.abs a!17) ((_ to_fp 11 53) #x2000000000000000))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!15)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!12
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!14)
                                    a!9))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!16)
                            a!12))))
  (not (fp.lt (fp.abs a!17) ((_ to_fp 11 53) #x2000000000000000))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) b_ack!4139))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!6)))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) b_ack!4139))
                           a!7))))
(let ((a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) b_ack!4139))
                           a!8))))
(let ((a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) b_ack!4139))
                            a!9))))
(let ((a!11 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) b_ack!4139))
                            a!10))))
  (not (fp.lt a!11 ((_ to_fp 11 53) #x0000000000000000))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!4139)
                                    a!1)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!21)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!17 (fp.add roundNearestTiesToEven
                    a!16
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2)))
      (a!18 (fp.add roundNearestTiesToEven
                    a!17
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!8)
                            a!16))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6)))
      (a!19 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!17))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!9)))
      (a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!18))))
(let ((a!23 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!22)
                                    a!12))
                    (fp.add roundNearestTiesToEven
                            a!20
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!22)
                                    a!19)))))
(let ((a!24 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!15 a!20)
                                    a!23)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!24 ((_ to_fp 11 53) #x3cc0000000000000))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x401c000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!16))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!18)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!9))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!17)
                                    a!12))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!19)
                            a!15))))
  (not (fp.gt (fp.abs a!20) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x401c000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!16))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!18)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!9))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!17)
                                    a!12))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!19)
                            a!15))))
  (not (fp.gt (fp.abs a!20) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x401c000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!16))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!18)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!9))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!17)
                                    a!12))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!19)
                            a!15))))
  (not (fp.lt (fp.abs a!20) ((_ to_fp 11 53) #x2000000000000000)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x401c000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!16))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!18)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!9))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!15
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!17)
                                    a!12))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!19)
                            a!15))))
  (not (fp.lt (fp.abs a!20) ((_ to_fp 11 53) #x2000000000000000)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x401c000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4018000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) b_ack!4139))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!7)))))
(let ((a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) b_ack!4139))
                           a!8))))
(let ((a!10 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) b_ack!4139))
                            a!9))))
(let ((a!11 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) b_ack!4139))
                            a!10))))
(let ((a!12 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) b_ack!4139))
                            a!11))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) b_ack!4139))
                            a!12))))
  (not (fp.lt a!13 ((_ to_fp 11 53) #x0000000000000000)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x401c000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!16))
      (a!19 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!4139)
                                    a!1)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!25)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2)))
      (a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!8)
                            a!19))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6)))
      (a!22 (fp.add roundNearestTiesToEven
                    a!21
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!20))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!9)))
      (a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!21))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!17)
                            a!12)))
      (a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!17)
                            a!22))))
(let ((a!27 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!26)
                                    a!15))
                    (fp.add roundNearestTiesToEven
                            a!24
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!26)
                                    a!23)))))
(let ((a!28 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!18 a!24)
                                    a!27)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!28 ((_ to_fp 11 53) #x3cc0000000000000)))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x401c000000000000)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4020000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!16))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!19))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!21)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!9))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!17)
                            a!12))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!20)
                                    a!15))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!22)
                            a!18))))
  (not (fp.gt (fp.abs a!23) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x401c000000000000)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4020000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!16))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!19))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!21)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!9))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!17)
                            a!12))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!20)
                                    a!15))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!22)
                            a!18))))
  (not (fp.gt (fp.abs a!23) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x401c000000000000)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4020000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!16))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!19))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!21)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!9))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!17)
                            a!12))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!20)
                                    a!15))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!22)
                            a!18))))
  (not (fp.lt (fp.abs a!23) ((_ to_fp 11 53) #x2000000000000000))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x401c000000000000)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4020000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!16))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!19))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!21
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!21)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!9))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!17)
                            a!12))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!18
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!20)
                                    a!15))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!22)
                            a!18))))
  (not (fp.lt (fp.abs a!23) ((_ to_fp 11 53) #x2000000000000000))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4140)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!4139))
                   ((_ to_fp 11 53) b_ack!4139)))
      (a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4010000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4014000000000000)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4018000000000000)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x401c000000000000)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4140)
                            ((_ to_fp 11 53) #x3fe0000000000000))
                    ((_ to_fp 11 53) #x4020000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4139)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!4))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!7))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!13))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!16))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!19))
      (a!22 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!4139)
                                    a!1)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4010000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!29
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!29)))
(let ((a!6 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!5)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!23 (fp.add roundNearestTiesToEven
                    a!22
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven a!3 a!8)
                           a!2)))
      (a!24 (fp.add roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!8)
                            a!22))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!6)))
      (a!25 (fp.add roundNearestTiesToEven
                    a!24
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!11)
                            a!23))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!9)))
      (a!26 (fp.add roundNearestTiesToEven
                    a!25
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!14)
                            a!24))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!17)
                            a!12)))
      (a!27 (fp.add roundNearestTiesToEven
                    a!26
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!17)
                            a!25))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!20)
                            a!15)))
      (a!28 (fp.add roundNearestTiesToEven
                    a!27
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!3 a!20)
                            a!26))))
(let ((a!31 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!21
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!30)
                                    a!18))
                    (fp.add roundNearestTiesToEven
                            a!28
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!3 a!30)
                                    a!27)))))
  (FPCHECK_FDIV_INVALID (fp.div roundNearestTiesToEven a!21 a!28) a!31)))))))))))

(check-sat)
(exit)
