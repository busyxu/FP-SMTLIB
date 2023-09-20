(declare-fun a_ack!312 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!312) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!312) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!312) ((_ to_fp 11 53) #x3e68000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!312) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!312) ((_ to_fp 11 53) #x404205966f2b4f12)))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!312))))))
  (bvsle #x00000001 a!1)))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!312))))))
  (bvsle #x00000002 a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!312)))))
      (a!2 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!312))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a!2)
                           ((_ to_fp 11 53) a_ack!312))))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!2)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!312)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!3)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))
                   a!3))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!10 a!9)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4008000000000000))
                    a!9)))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))
                   a!3))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    a!9)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))
                   a!3))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4014000000000000))
                    a!9)))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!312))))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!8)))
  (fp.eq a!14
         (fp.add roundNearestTiesToEven
                 a!13
                 ((_ to_fp 11 53) #x3ff0000000000000))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!312)))))
      (a!2 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!312))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a!2)
                           ((_ to_fp 11 53) a_ack!312))))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!2)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) a_ack!312)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000)))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!3)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))
                   a!3))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!10 a!9)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4008000000000000))
                    a!9)))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4010000000000000))
                   a!3))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4010000000000000))
                    a!9)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4014000000000000))
                   a!3))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x4014000000000000))
                    a!9)))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!312))))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.add roundNearestTiesToEven
                            a!13
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!14 a!8))))))))))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!312))))))
  (bvsle #x00000003 a!1)))
(assert (let ((a!1 (bvadd #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x404205966f2b4f12)
                            ((_ to_fp 11 53) a_ack!312))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!1)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!312))))
  (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
