(declare-fun a_ack!745 () (_ BitVec 64))
(declare-fun b_ack!744 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!744) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!744)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!745)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!744)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!745))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!744)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!745))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc024000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745))))))
  (fp.gt ((_ to_fp 11 53) b_ack!744) a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
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
                                   ((_ to_fp 11 53) b_ack!744))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt (fp.abs a!4) ((_ to_fp 11 53) #x5fefffffffffffff)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
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
                                   ((_ to_fp 11 53) b_ack!744))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt (fp.abs a!4) ((_ to_fp 11 53) #x5fefffffffffffff)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!744))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
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
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!744))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
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
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!744))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
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
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!744))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    ((_ to_fp 11 53) b_ack!744))))
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
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!744))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!5)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
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
                                    ((_ to_fp 11 53) b_ack!744))
                            a!6))))
  (not (fp.gt (fp.abs a!10) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4014000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!744))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!5)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
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
                                    ((_ to_fp 11 53) b_ack!744))
                            a!6))))
  (not (fp.gt (fp.abs a!10) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4010000000000000)))
      (a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!744))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!13 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      ((_ fp.to_sbv 32)
                        roundTowardZero
                        ((_ to_fp 11 53) a_ack!745)))
                    ((_ to_fp 11 53) #x4014000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!744))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) b_ack!744)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!3
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!744))
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
                                    ((_ to_fp 11 53) b_ack!744))
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
                                    ((_ to_fp 11 53) b_ack!744))
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
                       ((_ to_fp 11 53) a_ack!745)))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x8000000000000000)
            (fp.sub roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000)))
    b_ack!744)))

(check-sat)
(exit)
