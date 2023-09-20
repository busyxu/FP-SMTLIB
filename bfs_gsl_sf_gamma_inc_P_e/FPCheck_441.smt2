(declare-fun a_ack!1058 () (_ BitVec 64))
(declare-fun b_ack!1057 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1058) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1057) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1057) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1057) ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1058) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1057)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!1058)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1057)
                                   ((_ to_fp 11 53) a_ack!1058))
                           ((_ to_fp 11 53) a_ack!1058))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1057)
                                   ((_ to_fp 11 53) a_ack!1058))
                           ((_ to_fp 11 53) a_ack!1058)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1057)
                                   ((_ to_fp 11 53) a_ack!1058))
                           ((_ to_fp 11 53) a_ack!1058)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1058) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1058) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1058) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1058) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1058) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1058) ((_ to_fp 11 53) #x4330000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1057)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fefd70a3d70a3d7)
                    ((_ to_fp 11 53) a_ack!1058)))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1057)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1058)
                    ((_ to_fp 11 53) #x40c3880000000000)))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1057) ((_ to_fp 11 53) a_ack!1058))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #x3cb0000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2))))
  (not (fp.lt (fp.abs a!3) ((_ to_fp 11 53) #x3cb0000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   a!3)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!3 a!4))
              ((_ to_fp 11 53) #x3cb0000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   a!3)))
(let ((a!6 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  a!4
                                  (fp.add roundNearestTiesToEven a!5 a!4)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!6)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!7 (fp.abs (fp.div roundNearestTiesToEven
                           a!5
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!6 a!4)
                                   a!5)))))
  (not (fp.lt a!7 ((_ to_fp 11 53) #x3cb0000000000000))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!7 a!4)
                                   a!5)
                           a!6))))
  (not (fp.lt (fp.abs a!8) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.add roundNearestTiesToEven a!8 a!4)
                                   a!5)
                           a!6)
                   a!7)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!7 a!9))
              ((_ to_fp 11 53) #x3cb0000000000000))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!9 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!11 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!8
                                   (fp.add roundNearestTiesToEven a!10 a!8)))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!11)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!10 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1057)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1058)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
  (FPCHECK_FDIV_INVALID
    a!9
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!11 a!8) a!9))))))))))))

(check-sat)
(exit)
