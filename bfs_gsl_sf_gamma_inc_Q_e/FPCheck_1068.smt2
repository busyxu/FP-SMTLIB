(declare-fun a_ack!2584 () (_ BitVec 64))
(declare-fun b_ack!2583 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2583) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2583) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2583)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!2584)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) #x412e848000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) b_ack!2583))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2583)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2584)
                    ((_ to_fp 11 53) #xffffffffffffffff)))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2583)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!2584)))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2583)
                                   ((_ to_fp 11 53) a_ack!2584))
                           ((_ to_fp 11 53) a_ack!2584))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2583)
                                   ((_ to_fp 11 53) a_ack!2584))
                           ((_ to_fp 11 53) a_ack!2584)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!2583)
                                   ((_ to_fp 11 53) a_ack!2584))
                           ((_ to_fp 11 53) a_ack!2584)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) #x40c0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2584) ((_ to_fp 11 53) #x4330000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2583)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fefd70a3d70a3d7)
                    ((_ to_fp 11 53) a_ack!2584)))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2583)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2584)
                    ((_ to_fp 11 53) #x40c3880000000000)))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2583) ((_ to_fp 11 53) a_ack!2584))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
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
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!12 (fp.abs (fp.div roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!11 a!8)
                                    a!9)))))
  (not (fp.lt a!12 ((_ to_fp 11 53) #x3cb0000000000000))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!11 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!13 (fp.div roundNearestTiesToEven
                    a!10
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!12 a!8)
                                    a!9)
                            a!10))))
  (not (fp.lt (fp.abs a!13) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!12 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!13 a!8)
                                    a!9)
                            a!10)
                    a!11)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!11 a!14))
              ((_ to_fp 11 53) #x3cb0000000000000))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!13 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!14 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!16 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!12
                                   (fp.add roundNearestTiesToEven a!15 a!12)))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!16)))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!14 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!15 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!17 (fp.abs (fp.div roundNearestTiesToEven
                            a!13
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!16 a!12)
                                    a!13)))))
  (not (fp.lt a!17 ((_ to_fp 11 53) #x3cb0000000000000))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!15 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!16 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    a!14
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!17 a!12)
                                    a!13)
                            a!14))))
  (not (fp.lt (fp.abs a!18) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!16 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!17 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!18 a!12)
                                    a!13)
                            a!14)
                    a!15)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!15 a!19))
              ((_ to_fp 11 53) #x3cb0000000000000))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!17 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!18 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!19 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!21 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!16
                                   (fp.add roundNearestTiesToEven a!20 a!16)))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!21)))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!18 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!19 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!20 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4031000000000000))))))
(let ((a!22 (fp.abs (fp.div roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!21 a!16)
                                    a!17)))))
  (not (fp.lt a!22 ((_ to_fp 11 53) #x3cb0000000000000))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!19 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!20 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!21 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4031000000000000))))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4032000000000000))))))
(let ((a!23 (fp.div roundNearestTiesToEven
                    a!18
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!22 a!16)
                                    a!17)
                            a!18))))
  (not (fp.lt (fp.abs a!23) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!20 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!21 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!22 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4031000000000000))))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4032000000000000))))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4033000000000000))))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!23 a!16)
                                    a!17)
                            a!18)
                    a!19)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!19 a!24))
              ((_ to_fp 11 53) #x3cb0000000000000))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!21 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!22 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!23 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4031000000000000))))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4032000000000000))))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4033000000000000))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4034000000000000)))))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!24 a!16)
                                    a!17)
                            a!18)
                    a!19)))
(let ((a!26 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!20
                                   (fp.add roundNearestTiesToEven a!25 a!20)))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!26)))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!22 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!23 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!24 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4031000000000000))))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4032000000000000))))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4033000000000000))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4034000000000000)))))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!25 a!16)
                                    a!17)
                            a!18)
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4035000000000000))))))
(let ((a!27 (fp.abs (fp.div roundNearestTiesToEven
                            a!21
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!26 a!20)
                                    a!21)))))
  (not (fp.lt a!27 ((_ to_fp 11 53) #x3cb0000000000000))))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!23 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!24 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!25 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4031000000000000))))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4032000000000000))))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4033000000000000))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4034000000000000)))))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!26 a!16)
                                    a!17)
                            a!18)
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4035000000000000))))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4036000000000000))))))
(let ((a!28 (fp.div roundNearestTiesToEven
                    a!22
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!27 a!20)
                                    a!21)
                            a!22))))
  (not (fp.lt (fp.abs a!28) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!24 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!25 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!26 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4031000000000000))))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4032000000000000))))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4033000000000000))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4034000000000000)))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!27 a!16)
                                    a!17)
                            a!18)
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4035000000000000))))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4036000000000000))))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    a!22
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4037000000000000))))))
(let ((a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!28 a!20)
                                    a!21)
                            a!22)
                    a!23)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!23 a!29))
              ((_ to_fp 11 53) #x3cb0000000000000))))))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!25 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!26 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!27 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4031000000000000))))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4032000000000000))))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4033000000000000))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4034000000000000)))))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!28 a!16)
                                    a!17)
                            a!18)
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4035000000000000))))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4036000000000000))))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    a!22
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4037000000000000))))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4038000000000000)))))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!29 a!20)
                                    a!21)
                            a!22)
                    a!23)))
(let ((a!31 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!24
                                   (fp.add roundNearestTiesToEven a!30 a!24)))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!31)))))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!26 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!27 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!28 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4031000000000000))))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4032000000000000))))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4033000000000000))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4034000000000000)))))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!29 a!16)
                                    a!17)
                            a!18)
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4035000000000000))))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4036000000000000))))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    a!22
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4037000000000000))))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4038000000000000)))))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!30 a!20)
                                    a!21)
                            a!22)
                    a!23)))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    a!24
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4039000000000000))))))
(let ((a!32 (fp.abs (fp.div roundNearestTiesToEven
                            a!25
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!31 a!24)
                                    a!25)))))
  (not (fp.lt a!32 ((_ to_fp 11 53) #x3cb0000000000000))))))))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!27 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!28 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!29 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4031000000000000))))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4032000000000000))))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4033000000000000))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4034000000000000)))))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!30 a!16)
                                    a!17)
                            a!18)
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4035000000000000))))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4036000000000000))))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    a!22
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4037000000000000))))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4038000000000000)))))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!31 a!20)
                                    a!21)
                            a!22)
                    a!23)))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    a!24
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4039000000000000))))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    a!25
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x403a000000000000))))))
(let ((a!33 (fp.div roundNearestTiesToEven
                    a!26
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!32 a!24)
                                    a!25)
                            a!26))))
  (not (fp.lt (fp.abs a!33) ((_ to_fp 11 53) #x3cb0000000000000)))))))))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4010000000000000)))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!1)
                            a!2)
                    a!3)))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4014000000000000))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4018000000000000))))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x401c000000000000))))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   a!7
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4020000000000000)))))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!28 a!4)
                                    a!5)
                            a!6)
                    a!7)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!2583)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2584)
                                   ((_ to_fp 11 53) #x4022000000000000))))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!9
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4024000000000000))))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4026000000000000))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4028000000000000)))))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!29 a!8)
                                    a!9)
                            a!10)
                    a!11)))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402a000000000000))))))
(let ((a!14 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402c000000000000))))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x402e000000000000))))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4030000000000000)))))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!30 a!12)
                                    a!13)
                            a!14)
                    a!15)))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4031000000000000))))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4032000000000000))))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4033000000000000))))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4034000000000000)))))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!31 a!16)
                                    a!17)
                            a!18)
                    a!19)))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4035000000000000))))))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4036000000000000))))))
(let ((a!23 (fp.mul roundNearestTiesToEven
                    a!22
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4037000000000000))))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4038000000000000)))))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!32 a!20)
                                    a!21)
                            a!22)
                    a!23)))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    a!24
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x4039000000000000))))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    a!25
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x403a000000000000))))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!2583)
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2584)
                                    ((_ to_fp 11 53) #x403b000000000000))))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.add roundNearestTiesToEven a!33 a!24)
                                    a!25)
                            a!26)
                    a!27)))
  (not (fp.lt (fp.abs (fp.div roundNearestTiesToEven a!27 a!34))
              ((_ to_fp 11 53) #x3cb0000000000000))))))))))))))))))))))))))))))))
(assert (FPCHECK_FDIV_INVALID
  b_ack!2583
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2584)
          ((_ to_fp 11 53) #x403c000000000000))))

(check-sat)
(exit)
