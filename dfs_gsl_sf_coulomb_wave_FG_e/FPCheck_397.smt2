(declare-fun b_ack!3007 () (_ BitVec 64))
(declare-fun c_ack!3008 () (_ BitVec 64))
(declare-fun d_ack!3009 () (_ BitVec 32))
(declare-fun a_ack!3010 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3007) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3008) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!3008)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!3009))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3007) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3007) ((_ to_fp 11 53) #x3ff3333333333333)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x401921fb54442d18)
               ((_ to_fp 11 53) a_ack!3010))
       ((_ to_fp 11 53) #x4083ec744754dd24)))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!3010)
                       ((_ to_fp 11 53) b_ack!3007)))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (bvslt ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3fe0000000000000)))
                  d_ack!3009)))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x39b4484bfeebc2a0)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)
                   a!2)))
  (not (fp.eq a!3
              (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      (fp.mul roundNearestTiesToEven a!1 a!1))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2))))
  (fp.eq a!3 a!2)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!2 a!1))))
      (a!4 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   a!4)))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!3 a!5)
                 a!5)
         a!3)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!2 a!1))))
      (a!4 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven a!2 a!2))
                   a!4)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!3
                 (fp.sub roundNearestTiesToEven a!3 a!5))
         a!5)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!2 a!1))))
      (a!4 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           a!4))))
  (not (fp.lt (fp.abs a!5) ((_ to_fp 11 53) #x39b4484bfeebc2a0)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!2 a!1)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.lt (fp.abs a!4) ((_ to_fp 11 53) #x39b4484bfeebc2a0)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!2 a!1)))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (fp.lt (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!4)
         ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.gt (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!3008)
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!3008)
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          ((_ to_fp 11 53) #x40f86a0000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!2 a!1))))
      (a!5 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)
                           a!6)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!7
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (fp.mul roundNearestTiesToEven
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!4)
                 a!6)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!2 a!1))))
      (a!5 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)
                           a!6)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)
                           a!6)
                   a!7)))
  (fp.eq a!8 ((_ to_fp 11 53) #x3ff0000000000000))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!2 a!1))))
      (a!5 (fp.add roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!2 a!2))
                           a!5))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!4)
                           a!6)
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.gt (fp.abs a!7) ((_ to_fp 11 53) #x3cc0000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!5 a!1))))
      (a!7 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!2))
      (a!8 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!5 a!5))
                           a!7))))
(let ((a!9 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  a!3
                                  (fp.div roundNearestTiesToEven a!4 a!8)))
                  ((_ to_fp 11 53) #x39b4484bfeebc2a0))))
  (not a!9))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!5 a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!2))
      (a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!5 a!5))
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!7)))))
  (not (fp.lt (fp.abs a!8) ((_ to_fp 11 53) #x39b4484bfeebc2a0))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!3)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!1 a!3)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           a!6))))
  (not (fp.eq (fp.abs a!7) ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!3)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!1 a!3))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!3)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!3)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!8)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           a!6)))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!11)
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.div roundNearestTiesToEven a!10 a!6)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!7 a!12)
                 a!7)
         a!12)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!5 a!1))))
      (a!9 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!2))
      (a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!5 a!5))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!10 (fp.sub roundNearestTiesToEven
                    a!6
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!5 a!5))
                            a!9))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!7)))))
(let ((a!11 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8)
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    (fp.div roundNearestTiesToEven a!4 a!10))))))
  (not (fp.eq a!11 ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!3)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!1 a!3))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!3)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!3)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!8)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           a!6)))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!11)
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.div roundNearestTiesToEven a!10 a!6)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!7 a!12)
                 a!12)
         a!7)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!5 a!1)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!2))
      (a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!5 a!5))
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!7)))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!8)
              ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.gt a!1
                  (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!3008)
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          ((_ to_fp 11 53) #x40f86a0000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!5 a!1))))
      (a!9 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!2))
      (a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!5 a!5))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!10 (fp.sub roundNearestTiesToEven
                    a!6
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!5 a!5))
                            a!9))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!7)))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!8)
                    (fp.sub roundNearestTiesToEven
                            a!3
                            (fp.div roundNearestTiesToEven a!4 a!10)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!11
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!11)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!5 a!1))))
      (a!9 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!2))
      (a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!5 a!5))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!10 (fp.sub roundNearestTiesToEven
                    a!6
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!5 a!5))
                            a!9))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!7)))))
(let ((a!11 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!8)
                    (fp.sub roundNearestTiesToEven
                            a!3
                            (fp.div roundNearestTiesToEven a!4 a!10)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!11
                 (fp.sub roundNearestTiesToEven
                         a!11
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!5 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!1)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!5 a!1))))
      (a!9 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!2))
      (a!7 (fp.sub roundNearestTiesToEven
                   a!6
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!5 a!5))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!10 (fp.sub roundNearestTiesToEven
                    a!6
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!5 a!5))
                            a!9))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   a!3
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!7)))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8)
                            (fp.sub roundNearestTiesToEven
                                    a!3
                                    (fp.div roundNearestTiesToEven a!4 a!10)))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.gt (fp.abs a!11) ((_ to_fp 11 53) #x3cc0000000000000))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           a!1)
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!2)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007)))))
  (fp.eq a!3 a!2)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           a!1)
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!2)
                   a!2)))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 ((_ to_fp 11 53) b_ack!3007)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!9 a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!3)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!6))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!9 a!9))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!12))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!4 a!13)
                 a!13)
         a!4)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!9 a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!3)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!6))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!9 a!9))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!5)
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!12))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!4
                 (fp.sub roundNearestTiesToEven a!4 a!13))
         a!13)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!9 a!1))))
      (a!11 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!3)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!6))
      (a!12 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!9 a!9))
                            a!11))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!4
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    (fp.div roundNearestTiesToEven a!8 a!12))))))
  (not (fp.lt (fp.abs a!13) ((_ to_fp 11 53) #x39b4484bfeebc2a0))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!9 a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!3)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!6))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!9 a!9))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!4
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12)))))
  (not (fp.lt (fp.abs a!13) ((_ to_fp 11 53) #x39b4484bfeebc2a0)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!9 a!1)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!3)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!6))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!9 a!9))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!4
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12)))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!13)
              ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.gt (fp.add roundNearestTiesToEven
                          a!1
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!3008)
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          ((_ to_fp 11 53) #x40f86a0000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!1))))
      (a!10 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!9 a!1))))
      (a!14 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!3)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!6))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!9 a!9))
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!15 (fp.sub roundNearestTiesToEven
                    a!10
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!9 a!9))
                            a!14))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11))))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!4
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.sub roundNearestTiesToEven
                                    a!7
                                    (fp.div roundNearestTiesToEven a!8 a!15))))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    a!4
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12)))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!13)
                            a!16)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.gt (fp.abs a!17) ((_ to_fp 11 53) #x3cc0000000000000)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!2)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007)))))
  (fp.eq a!3 a!2)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!2)
                   a!2)))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 ((_ to_fp 11 53) b_ack!3007)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!3007))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!13 a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!7)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!15 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!4 a!2))))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!15)))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16)))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!4 a!4))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!17))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!5 a!18)
                 a!18)
         a!5))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!3007))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!13 a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!7)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!15 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!4 a!2))))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!15)))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16)))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!4 a!4))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!17))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!5
                 (fp.sub roundNearestTiesToEven a!5 a!18))
         a!18))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!3007))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!13 a!1))))
      (a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!7)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            a!15))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!4 a!2))))
      (a!17 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    (fp.div roundNearestTiesToEven a!12 a!16))))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!4 a!4))
                    a!17)))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!5 a!18)
                 a!18)
         a!5)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!3007))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!13 a!1))))
      (a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!7)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            a!15))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!4 a!2))))
      (a!17 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    (fp.div roundNearestTiesToEven a!12 a!16))))))
(let ((a!18 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            (fp.mul roundNearestTiesToEven a!4 a!4))
                    a!17)))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!5
                 (fp.sub roundNearestTiesToEven a!5 a!18))
         a!18)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!3007))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!13 a!1))))
      (a!15 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!7)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            a!15))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!4 a!2))))
      (a!17 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    (fp.div roundNearestTiesToEven a!12 a!16))))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!4 a!4))
                            a!17))))
  (not (fp.lt (fp.abs a!18) ((_ to_fp 11 53) #x39b4484bfeebc2a0)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!3007))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!13 a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!7)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!15 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!4 a!2))))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!15)))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16)))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!4 a!4))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)))))
  (not (fp.lt (fp.abs a!18) ((_ to_fp 11 53) #x39b4484bfeebc2a0))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!3)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!1 a!3))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!3)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!3))))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!3
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!3010)
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!3010)
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!3010)
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!8))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            a!14))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           a!6)))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5))))
      (a!18 (fp.sub roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    (fp.div roundNearestTiesToEven a!10 a!6))))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    (fp.div roundNearestTiesToEven a!10 a!6)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11)))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)
                            a!18))))
  (not (fp.eq (fp.abs a!19) ((_ to_fp 11 53) #x0000000000000000))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!3)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!1 a!3))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!3)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!3))))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!3
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!3010)
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!3010)
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!3010)
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!22 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!8))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            a!14)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    a!20)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           a!6)))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5))))
      (a!18 (fp.sub roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    (fp.div roundNearestTiesToEven a!10 a!6)))))
      (a!23 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!22 a!20)))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    (fp.div roundNearestTiesToEven a!10 a!6)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11))))
      (a!25 (fp.sub roundNearestTiesToEven
                    a!23
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!22 a!22))
                            a!18))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)
                            a!18)))
      (a!24 (fp.sub roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!22 a!22))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!24)
                            a!25))))
  (fp.eq (fp.div roundNearestTiesToEven a!26 a!19)
         (fp.mul roundNearestTiesToEven
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!24)
                 a!25))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!3007))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!13 a!1))))
      (a!19 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!7)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!15 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!20 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            a!19))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!4 a!2))))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!15))))
      (a!21 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    (fp.div roundNearestTiesToEven a!12 a!20))))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16))))
      (a!22 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!4 a!4))
                            a!21))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!4 a!4))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)))))
(let ((a!23 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!18)
                            a!22))))
  (not (fp.eq a!23 ((_ to_fp 11 53) #x0000000000000000)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007)))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           a!3)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!1 a!3))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) b_ack!3007))
                   (fp.div roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3010)
                                   a!3)
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!3)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!3))))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!3
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!14 (fp.div roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!3010)
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!3010)
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) a_ack!3010)
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!22 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.sub roundNearestTiesToEven
                   a!4
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           a!2)))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!3
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   a!8))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!13
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            a!14)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    a!20)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!5)
                           a!6)))
      (a!11 (fp.sub roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            a!10
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!5))))
      (a!18 (fp.sub roundNearestTiesToEven
                    a!15
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    (fp.div roundNearestTiesToEven a!10 a!6)))))
      (a!23 (fp.mul roundNearestTiesToEven
                    a!21
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!22 a!20)))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    a!7
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11)
                            (fp.sub roundNearestTiesToEven
                                    a!9
                                    (fp.div roundNearestTiesToEven a!10 a!6)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    a!15
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!11))))
      (a!25 (fp.sub roundNearestTiesToEven
                    a!23
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!22 a!22))
                            a!18))))
(let ((a!19 (fp.mul roundNearestTiesToEven
                    a!12
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)
                            a!18)))
      (a!24 (fp.sub roundNearestTiesToEven
                    a!23
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!22 a!22))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)))))
(let ((a!26 (fp.mul roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!24)
                            a!25))))
(let ((a!27 (fp.div roundNearestTiesToEven
                    a!26
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!24)
                            a!25))))
  (fp.eq a!27 a!19))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!3007))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!13 a!1)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!7)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!15 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!4 a!2))))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!15)))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16)))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!4 a!4))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)))))
  (fp.lt (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!18)
         ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.gt (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  a!1
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  (fp.add roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!3008)
                                  ((_ to_fp 11 53) #x3ff0000000000000))
                          ((_ to_fp 11 53) #x40f86a0000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!3007))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!13 a!1))))
      (a!19 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!7)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!15 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!20 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            a!19))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!4 a!2))))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!15))))
      (a!21 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    (fp.div roundNearestTiesToEven a!12 a!20))))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16))))
      (a!22 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!4 a!4))
                            a!21))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!4 a!4))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!18)
                            a!22)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 a!23
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (fp.mul roundNearestTiesToEven
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!18)
                 a!22))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!3007))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!13 a!1))))
      (a!19 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!7)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!15 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!20 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            a!19))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!4 a!2))))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!15))))
      (a!21 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    (fp.div roundNearestTiesToEven a!12 a!20))))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16))))
      (a!22 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!4 a!4))
                            a!21))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!4 a!4))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!18)
                            a!22)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!24 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!18)
                            a!22)
                    a!23)))
  (fp.eq a!24 ((_ to_fp 11 53) #x3ff0000000000000)))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!3008)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3010)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) c_ack!3008)
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!7 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!3010)
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            ((_ to_fp 11 53) b_ack!3007))
                    (fp.div roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!12 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!3010)
                                    a!1))))
      (a!14 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            a!1)
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))
                            (fp.div roundNearestTiesToEven a!13 a!1))))
      (a!19 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) c_ack!3008)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    ((_ to_fp 11 53) b_ack!3007))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           a!7)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000)))
                    a!10))
      (a!15 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!20 (fp.sub roundNearestTiesToEven
                    a!14
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!13 a!13))
                            a!19))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   a!3
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!3007))
                           (fp.div roundNearestTiesToEven a!4 a!2))))
      (a!16 (fp.sub roundNearestTiesToEven
                    a!11
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!15))))
      (a!21 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.sub roundNearestTiesToEven
                                    a!11
                                    (fp.div roundNearestTiesToEven a!12 a!20))))))
(let ((a!17 (fp.sub roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!9)
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16))))
      (a!22 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.div roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!4 a!4))
                            a!21))))
(let ((a!18 (fp.sub roundNearestTiesToEven
                    a!5
                    (fp.mul roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    (fp.mul roundNearestTiesToEven a!4 a!4))
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!17)))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!18)
                            a!22)
                    ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.gt (fp.abs a!23) ((_ to_fp 11 53) #x3cc0000000000000))))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!2)
                 a!2)
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!2)
                 a!2)
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!3008)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!3010)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FADD_UNDERFLOW
    #x3ff0000000000000
    (fp.mul roundNearestTiesToEven a!2 a!2)))))

(check-sat)
(exit)
