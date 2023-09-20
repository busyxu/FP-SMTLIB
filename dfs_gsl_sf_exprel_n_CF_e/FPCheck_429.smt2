(declare-fun a_ack!1767 () (_ BitVec 64))
(declare-fun b_ack!1766 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1767))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1766) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1766)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1767)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1767)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1767)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!1766)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1767))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!1766)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1767))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc024000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767))))))
  (fp.gt ((_ to_fp 11 53) b_ack!1766) a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt (fp.abs a!4) ((_ to_fp 11 53) #x5fefffffffffffff)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt (fp.abs a!4) ((_ to_fp 11 53) #x5fefffffffffffff)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1766))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!2)
                   a!5))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!3)
                   a!5)))
(let ((a!8 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   (fp.div roundNearestTiesToEven a!2 a!3)
                                   (fp.div roundNearestTiesToEven a!6 a!7))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!8 ((_ to_fp 11 53) #x3cc0000000000000))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!1766))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!5)
                   (fp.mul roundNearestTiesToEven a!7 a!4))))
  (not (fp.gt (fp.abs a!8) ((_ to_fp 11 53) #x5fefffffffffffff))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!1766))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!5)
                   (fp.mul roundNearestTiesToEven a!7 a!4))))
  (not (fp.gt (fp.abs a!8) ((_ to_fp 11 53) #x5fefffffffffffff))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1766))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!3)
                   a!4))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!6)
                   a!4)))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!5)
                    (fp.mul roundNearestTiesToEven a!10 a!3)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!10 a!6))))
(let ((a!13 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!5 a!7)
                                    (fp.div roundNearestTiesToEven a!11 a!12))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!13 ((_ to_fp 11 53) #x3cc0000000000000)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!1766))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!5)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!6)
                   (fp.mul roundNearestTiesToEven a!8 a!5))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!6))))
  (not (fp.gt (fp.abs a!10) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!1766))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!5)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!6)
                   (fp.mul roundNearestTiesToEven a!8 a!5))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!6))))
  (not (fp.gt (fp.abs a!10) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1766))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!1766)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!3
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!4)
                   a!5))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!10)
                    a!5)))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!6)
                   (fp.mul roundNearestTiesToEven a!8 a!4)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven a!8 a!10))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!6)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!11))))
(let ((a!16 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!12)
                                    (fp.div roundNearestTiesToEven a!14 a!15))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!16 ((_ to_fp 11 53) #x3cc0000000000000))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!1766)))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!6))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!7))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven a!12 a!10))))
  (not (fp.gt (fp.abs a!13) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!1766)))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!6)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!6))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!7))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven a!12 a!10))))
  (not (fp.gt (fp.abs a!13) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1766))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!16 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4018000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!1766)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!4
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!5)
                   a!6))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!12)
                    a!6)))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!5)))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!9 a!12))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!7)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!13))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven a!17 a!10)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!15)
                    (fp.mul roundNearestTiesToEven a!17 a!14))))
(let ((a!20 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!11 a!15)
                                    (fp.div roundNearestTiesToEven a!18 a!19))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!20 ((_ to_fp 11 53) #x3cc0000000000000)))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!8)
                    (fp.mul roundNearestTiesToEven a!10 a!7))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!8))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!12)
                    (fp.mul roundNearestTiesToEven a!13 a!11))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!12))))
  (not (fp.gt (fp.abs a!15) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!7)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!8)
                    (fp.mul roundNearestTiesToEven a!10 a!7))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!8))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!12)
                    (fp.mul roundNearestTiesToEven a!13 a!11))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!12))))
  (not (fp.gt (fp.abs a!15) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1766))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!20 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x401c000000000000))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!5
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!6)
                   a!7))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!15)
                    a!7)))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!8)
                    (fp.mul roundNearestTiesToEven a!10 a!6)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!10 a!15))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!8)))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!17)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!16))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!12)
                    (fp.mul roundNearestTiesToEven a!13 a!11)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!18)
                    (fp.mul roundNearestTiesToEven a!13 a!17))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!12)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!18))))
(let ((a!23 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!14 a!19)
                                    (fp.div roundNearestTiesToEven a!21 a!22))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!23 ((_ to_fp 11 53) #x3cc0000000000000))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4020000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!9)
                    (fp.mul roundNearestTiesToEven a!11 a!8))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!9))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!14 a!12))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!13))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!17 a!15))))
  (not (fp.gt (fp.abs a!18) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4020000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!9)
                    (fp.mul roundNearestTiesToEven a!11 a!8))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!9))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!14 a!12))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!13))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!17 a!15))))
  (not (fp.gt (fp.abs a!18) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1766))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!23 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4020000000000000))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!7)
                   a!8))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!17)
                    a!8)))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!9)
                    (fp.mul roundNearestTiesToEven a!11 a!7)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!18)
                    (fp.mul roundNearestTiesToEven a!11 a!17))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!9)))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!18))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!14 a!12)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!20)
                    (fp.mul roundNearestTiesToEven a!14 a!19))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!13)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!21)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!20))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!24 a!15)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!21))))
(let ((a!27 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!16 a!22)
                                    (fp.div roundNearestTiesToEven a!25 a!26))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!27 ((_ to_fp 11 53) #x3cc0000000000000)))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4020000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!9))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!10))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14)
                    (fp.mul roundNearestTiesToEven a!15 a!13))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!14))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!17)
                    (fp.mul roundNearestTiesToEven a!18 a!16))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!17))))
  (not (fp.gt (fp.abs a!20) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4020000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!9)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!9))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!10))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14)
                    (fp.mul roundNearestTiesToEven a!15 a!13))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!14))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!17)
                    (fp.mul roundNearestTiesToEven a!18 a!16))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!17))))
  (not (fp.gt (fp.abs a!20) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4020000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!1766))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!27 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4022000000000000))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!7
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!8)
                    a!9))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!20)
                    a!9)))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!8)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!21)
                    (fp.mul roundNearestTiesToEven a!12 a!20))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!10)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!21))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14)
                    (fp.mul roundNearestTiesToEven a!15 a!13)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!23)
                    (fp.mul roundNearestTiesToEven a!15 a!22))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!14)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!24)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!23))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!17)
                    (fp.mul roundNearestTiesToEven a!18 a!16)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!18 a!24))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!27
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!17)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!27
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!26)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!25))))
(let ((a!30 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!19 a!26)
                                    (fp.div roundNearestTiesToEven a!28 a!29))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!30 ((_ to_fp 11 53) #x3cc0000000000000))))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4024000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4020000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven a!13 a!10))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!11))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!15)
                    (fp.mul roundNearestTiesToEven a!16 a!14))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!17)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!15))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!18)
                    (fp.mul roundNearestTiesToEven a!19 a!17))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!20)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!18))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!21)
                    (fp.mul roundNearestTiesToEven a!22 a!20))))
  (not (fp.gt (fp.abs a!23) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4024000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4020000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven a!13 a!10))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!11))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!15)
                    (fp.mul roundNearestTiesToEven a!16 a!14))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!17)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!15))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!18)
                    (fp.mul roundNearestTiesToEven a!19 a!17))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!20)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!18))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!21)
                    (fp.mul roundNearestTiesToEven a!22 a!20))))
  (not (fp.gt (fp.abs a!23) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4020000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!1766))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!30 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4024000000000000))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!1766))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!9)
                    a!10))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!22)
                    a!10)))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven a!13 a!9)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!23)
                    (fp.mul roundNearestTiesToEven a!13 a!22))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!11)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!24)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!23))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!15)
                    (fp.mul roundNearestTiesToEven a!16 a!14)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!16 a!24))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!17)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!15)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!26)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!25))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!18)
                    (fp.mul roundNearestTiesToEven a!19 a!17)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!27)
                    (fp.mul roundNearestTiesToEven a!19 a!26))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!20)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!18)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!27))))
(let ((a!32 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!30
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!21)
                    (fp.mul roundNearestTiesToEven a!31 a!20)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!30
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!29)
                    (fp.mul roundNearestTiesToEven a!31 a!28))))
(let ((a!34 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!21 a!29)
                                    (fp.div roundNearestTiesToEven a!32 a!33))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!34 ((_ to_fp 11 53) #x3cc0000000000000)))))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4026000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4024000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4020000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!12)
                    (fp.mul roundNearestTiesToEven a!14 a!11))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!12))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!17 a!15))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!18)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!16))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!20 a!18))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!21)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!19))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!23 a!21))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!24)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!22))))
  (not (fp.gt (fp.abs a!25) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4026000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4024000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4020000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!12)
                    (fp.mul roundNearestTiesToEven a!14 a!11))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!15)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!12))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!17 a!15))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!18)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!16))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!20 a!18))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!21)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!19))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!23 a!21))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!24)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!22))))
  (not (fp.gt (fp.abs a!25) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4026000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4024000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4022000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4020000000000000)))
      (a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x401c000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4018000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1767)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!1766))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!1767)))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!1766)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!11)
                    a!12))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!27)
                    a!12)))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!11)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!15 a!27))))
(let ((a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!13)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!29)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!28))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!17)
                    (fp.mul roundNearestTiesToEven a!18 a!16)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!30)
                    (fp.mul roundNearestTiesToEven a!18 a!29))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!17)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4008000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!30))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!20)
                    (fp.mul roundNearestTiesToEven a!21 a!19)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!32)
                    (fp.mul roundNearestTiesToEven a!21 a!31))))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!20)))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!33)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!32))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!23)
                    (fp.mul roundNearestTiesToEven a!24 a!22)))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!24 a!33))))
(let ((a!26 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!23)))
      (a!36 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!35)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4014000000000000)
                                    ((_ to_fp 11 53) b_ack!1766))
                            a!34))))
  (FPCHECK_FDIV_UNDERFLOW a!26 a!36)))))))))))))

(check-sat)
(exit)
