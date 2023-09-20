(declare-fun c_ack!3819 () (_ BitVec 64))
(declare-fun a_ack!3820 () (_ BitVec 32))
(declare-fun b_ack!3818 () (_ BitVec 64))
(declare-fun CF_cosh ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3819) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!3820 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!3819) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!3820)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3819) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!3819) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!3820)))
(assert (not (= #x00000001 a_ack!3820)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3819) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!3818))
                          ((_ to_fp 11 53) c_ack!3819))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvmul a_ack!3820 a_ack!3820))
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!3818))
                           (fp.abs ((_ to_fp 11 53) b_ack!3818))))))
  (fp.lt (fp.div roundNearestTiesToEven
                 (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 (fp.mul roundNearestTiesToEven
                         (CF_cosh c_ack!3819)
                         (CF_cosh c_ack!3819)))
         ((_ to_fp 11 53) #x3effbf7e4e8cc9d1))))
(assert (fp.lt (CF_cosh c_ack!3819) ((_ to_fp 11 53) #x5fdfffffffffffff)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!2 a!3)
                         a!4)
                 a!4)
         (fp.mul roundNearestTiesToEven a!2 a!3)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!3)
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!2 a!3)
                         a!4))
         a!4))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3819)
                                   (CF_cosh c_ack!3819)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!3 a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!6)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!5))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!7 a!8)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!8)
                                    ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!11 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                   a!10
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!11))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3819)
                                   (CF_cosh c_ack!3819)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!3 a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!6)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!5))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!7 a!8)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!8)
                                    ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!10)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!10)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3819)
                                   (CF_cosh c_ack!3819)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!3 a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!6)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!5))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!7 a!8)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!8)
                                    ((_ to_fp 11 53) #x0000000000000000))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!10)
                 a!10)
         ((_ to_fp 11 53) #x3ff0000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!7 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!2 a!3)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!5))))
  (not (fp.eq (fp.abs (fp.div roundNearestTiesToEven a!6 a!7))
              ((_ to_fp 11 53) #x0000000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3819)
                                   (CF_cosh c_ack!3819)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!5)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven a!13 a!15)))))
(let ((a!17 (fp.div roundNearestTiesToEven
                    a!16
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7)))))
  (fp.eq a!17
         (fp.mul roundNearestTiesToEven
                 a!8
                 (fp.sub roundNearestTiesToEven a!13 a!15)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3819)
                                   (CF_cosh c_ack!3819)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!3 a!4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!6)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!5))))
(let ((a!10 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.sub roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!7 a!8)
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.mul roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!9 a!8)
                                    ((_ to_fp 11 53) #x0000000000000000))))))
  (not (fp.eq (fp.abs a!10) ((_ to_fp 11 53) #x0000000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3819)
                                   (CF_cosh c_ack!3819)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!5)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven a!13 a!15)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!16
                 (fp.mul roundNearestTiesToEven
                         a!8
                         (fp.sub roundNearestTiesToEven a!13 a!15)))
         (fp.div roundNearestTiesToEven
                 a!6
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4010000000000000)
                         a!7))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3819)
                                   (CF_cosh c_ack!3819)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!5)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4))))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!5
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!2 a!3)
                                    a!4)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven a!13 a!15))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven a!18 a!19)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!16 a!20)
                 a!20)
         a!16))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3819)
                                   (CF_cosh c_ack!3819)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!2 a!3)
                                   a!4)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!5)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!4))))
      (a!17 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!5
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!2 a!3)
                                    a!4)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven a!13 a!15))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven a!18 a!19)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!16
                 (fp.sub roundNearestTiesToEven a!16 a!20))
         a!20))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3819)
                                   (CF_cosh c_ack!3819)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!2)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!2)
                                   a!5))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!2)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!4))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven a!13 a!15))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven a!18 a!19)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!16 a!20)
                 a!16)
         a!20))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.div roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   (CF_cosh c_ack!3819)
                                   (CF_cosh c_ack!3819)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!2)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!2)
                                   a!5))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!2)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!4))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.sub roundNearestTiesToEven a!13 a!15))))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven a!18 a!19)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!16 a!20)
                 a!20)
         a!16))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_cosh c_ack!3819)
                           (CF_cosh c_ack!3819))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!4)
                                   a!5)
                           ((_ to_fp 11 53) #x4000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!6)))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!11)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5))))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!4)
                                    a!5)))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!14
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven a!13 a!15)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven a!19 a!20))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!16))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!21))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.abs (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!16))
                    (fp.abs (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!21)))))
(let ((a!24 (fp.div roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.sub roundNearestTiesToEven a!17 a!22))
                    a!23)))
  (not (fp.lt (fp.abs a!24) ((_ to_fp 11 53) #x3cb0000000000000))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_cosh c_ack!3819)
                           (CF_cosh c_ack!3819))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!4)
                                   a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!6)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!4)
                                    a!5))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!15)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!8))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven a!9 a!11)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.add roundNearestTiesToEven a!19 a!20)))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!12)))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.sub roundNearestTiesToEven a!17 a!21))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12)
                            a!22)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!12))))
  (fp.eq a!23 a!22)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_cosh c_ack!3819)
                           (CF_cosh c_ack!3819))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!4)
                                   a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!6)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!4)
                                    a!5))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!15)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!8))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven a!9 a!11)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.add roundNearestTiesToEven a!19 a!20)))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!12)))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.sub roundNearestTiesToEven a!17 a!21))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!12)
                            a!22)
                    a!22)))
  (fp.eq a!23
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!12))))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_cosh c_ack!3819)
                           (CF_cosh c_ack!3819))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!3)
                                   a!6))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!3)
                                    a!6)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!5)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!14 a!13)
                                    a!6))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!14 a!13)
                                    a!6)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!15))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!8))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven a!9 a!11)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven a!17 a!18)))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!20
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!12)))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven a!19 a!21))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!12)
                            a!22)
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!12))))
  (fp.eq a!23 a!22)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_cosh c_ack!3819)
                           (CF_cosh c_ack!3819))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!3)
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!13)
                    (fp.mul roundNearestTiesToEven
                            a!14
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!4 a!3)
                                   a!6))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!4 a!3)
                                    a!6)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!5)))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!14 a!13)
                                    a!6))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!14 a!13)
                                    a!6)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!15))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!8))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!18 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven a!9 a!11)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x3ff0000000000000))
                            (fp.sub roundNearestTiesToEven a!17 a!18)))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!20
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!12)))
(let ((a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.add roundNearestTiesToEven a!19 a!21))))
(let ((a!23 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!12)
                            a!22)
                    a!22)))
  (fp.eq a!23
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x0000000000000000)
                 a!12))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_cosh c_ack!3819)
                           (CF_cosh c_ack!3819)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!2)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!2)
                                   a!5))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!11)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!15)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5))))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!2)
                                    a!5)
                            ((_ to_fp 11 53) #x4008000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!4))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven a!17 a!19)))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven a!23 a!24))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    a!20))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!22
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    a!25))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!22
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    a!20))
      (a!30 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    a!25)))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.sub roundNearestTiesToEven a!21 a!26))))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!28
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.add roundNearestTiesToEven a!29 a!30)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!27 a!31)
                 a!27)
         a!31))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_cosh c_ack!3819)
                           (CF_cosh c_ack!3819)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!9 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!1)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!2)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!10)
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4008000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!2)
                                   a!5))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!11)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5)
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!15)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5))))
      (a!22 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!9 a!10)
                                    a!5))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!2)
                                    a!5)
                            ((_ to_fp 11 53) #x4008000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!4))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!7))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven a!17 a!19)))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven a!23 a!24))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    a!20))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!22
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    a!25))
      (a!29 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!22
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    a!20))
      (a!30 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!12
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!7))
                    a!25)))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!6
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.sub roundNearestTiesToEven a!21 a!26))))
      (a!31 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!28
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4022000000000000)
                                    a!7))
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!8
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.add roundNearestTiesToEven a!29 a!30)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!27 a!31)
                 a!31)
         a!27))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_cosh c_ack!3819)
                           (CF_cosh c_ack!3819))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!4)
                                   a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!6)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!4)
                                    a!5))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!15)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!8))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven a!9 a!11)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven a!19 a!20))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!12))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!21))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!12))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!21)))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.sub roundNearestTiesToEven a!17 a!22))))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!21)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.add roundNearestTiesToEven a!24 a!25)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven (fp.abs a!23) (fp.abs a!26))
                 (fp.abs a!23))
         (fp.abs a!26)))))))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (CF_cosh c_ack!3819)
                           (CF_cosh c_ack!3819))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000000 a_ack!3820))
                           ((_ to_fp 11 53) #x3fe0000000000000))))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe0000000000000)
                           ((_ to_fp 11 53) b_ack!3818))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           ((_ to_fp 11 53) b_ack!3818)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd0000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe8000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!13 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe8000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x4000000000000000))
                    ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) b_ack!3818)))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            a!13
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #xbfe0000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!3 a!4)
                                   a!5)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!3818))
                           a!6)))
      (a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!3 a!4)
                                    a!5))))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5)
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            a!15)))
      (a!18 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x4000000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    ((_ to_fp 11 53) b_ack!3818))
                            (fp.sub roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!13 a!14)
                                    a!5)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!7
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!8))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!11 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000)))
      (a!19 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!10
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!20 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3ff0000000000000)
                                    a!8))
                    ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.sub roundNearestTiesToEven a!9 a!11)))
      (a!21 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.add roundNearestTiesToEven a!19 a!20))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!12))
      (a!22 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!21))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!18
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!12))
      (a!25 (fp.mul roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4010000000000000)
                                    a!8))
                    a!21)))
(let ((a!23 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff0000000000000)
                            a!12)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.sub roundNearestTiesToEven a!17 a!22))))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!21)
                    (fp.mul roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!1
                                    ((_ to_fp 11 53) #x4000000000000000))
                            (fp.add roundNearestTiesToEven a!24 a!25)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven (fp.abs a!23) (fp.abs a!26))
                 (fp.abs a!26))
         (fp.abs a!23)))))))))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  (CF_cosh c_ack!3819)
                  (CF_cosh c_ack!3819)))
  #x4008000000000000))

(check-sat)
(exit)
